package beauty.home.beautyhomeapplication;

import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.squareup.picasso.Callback;
import com.squareup.picasso.NetworkPolicy;
import com.squareup.picasso.Picasso;

import java.util.List;


public class ImageAdapter extends RecyclerView.Adapter<ImageAdapter.ImageViewHolder> {
    private Context mContext;
    private List<BeautyHomeItem> mItems;
    private ImageAdapter.OnItemClickListener mListener;

    public ImageAdapter(Context context, List<BeautyHomeItem> items) {
        mContext = context;
        mItems = items;
    }

    @NonNull
    @Override
    public ImageViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(mContext).inflate(R.layout.image_item, parent, false);
        return new ImageViewHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull ImageViewHolder holder, int position) {
        BeautyHomeItem itemCurrent = mItems.get(position);
        final String thumbnail=itemCurrent.getThumbnail();
        holder.textViewName.setText(itemCurrent.getName());
        holder.textViewPrice.setText(itemCurrent.getPrice());
        holder.textViewDescription.setText(itemCurrent.getDescription().toString());
        Picasso.with(mContext)
            .load(itemCurrent.getThumbnail())
                .placeholder(R.mipmap.ic_launcher)
                .fit()
                .into(holder.imageView);
}

    @Override
    public int getItemCount() {
        return mItems.size();
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        mListener = listener;
    }


    public interface OnItemClickListener {
        void onItemClick(int position);

        void onWhatEverClick(int position);

        void onDeleteClick(int position);
    }

    public class ImageViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener,
            View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {
        public TextView textViewName;
        public ImageView imageView;
        public TextView textViewPrice;
        public TextView textViewDescription;

        public ImageViewHolder(@NonNull View itemView) {
            super(itemView);
            textViewName = itemView.findViewById(R.id.text_view_v_name);
            imageView = itemView.findViewById(R.id.image_v_view);
            textViewPrice = itemView.findViewById(R.id.text_view_v_price);
            textViewDescription = itemView.findViewById(R.id.text_view_item_description);


            itemView.setOnClickListener(this);
            itemView.setOnCreateContextMenuListener(this);
        }

        @Override
        public void onClick(View v) {
            if (mListener != null) {
                int position = getAdapterPosition();
                if (position != RecyclerView.NO_POSITION) {
                    mListener.onItemClick(position);

                }
            }
        }

        @Override
        public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
            //menu.setHeaderTitle("Select Action");
            // doWhatever = menu.add(Menu.NONE, 1, 1, "تعديل");
            //MenuItem delete = menu.add(Menu.NONE, 2, 2, "حذف");
            //doWhatever.setOnMenuItemClickListener(this);
            //delete.setOnMenuItemClickListener(this);

        }

        @Override
        public boolean onMenuItemClick(MenuItem item) {
            if (mListener != null) {
                int position = getAdapterPosition();
                if (position != RecyclerView.NO_POSITION) {
                    mListener.onItemClick(position);
                    switch (item.getItemId()) {
                        case 1:
                            mListener.onWhatEverClick(position);
                            return true;
                        case 2:
                            mListener.onDeleteClick(position);
                            return true;
                    }
                }
            }
            return false;
        }
    }
}