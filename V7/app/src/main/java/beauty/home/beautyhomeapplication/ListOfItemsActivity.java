package beauty.home.beautyhomeapplication;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import static android.view.Window.FEATURE_NO_TITLE;

public class ListOfItemsActivity extends AppCompatActivity implements ImageAdapter.OnItemClickListener {

    private String type;
    private ImageAdapter mAdapter;

    private RecyclerView mRecyclerView;


    private ProgressBar mProgressCircle;

    private Button mBtnClose;


    private List<BeautyHomeItem> items;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try
        {
            this.getSupportActionBar().hide();
        }
        catch (NullPointerException e){}
        setContentView(R.layout.activity_list_of_items);
        type = getIntent().getStringExtra("TYPE");

        mRecyclerView = findViewById(R.id.recycler_view);
        mRecyclerView.setHasFixedSize(true);
        mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        mBtnClose =findViewById(R.id.btnClose2);

        mProgressCircle = findViewById(R.id.progress_circle);

        items = new ArrayList<>();

        mAdapter = new ImageAdapter(ListOfItemsActivity.this, items);
        mRecyclerView.setAdapter(mAdapter);
        mAdapter.setOnItemClickListener(ListOfItemsActivity.this);
        mBtnClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });


        String url=Constants.PHP_SERVICE_URL+"?TYPE="+type.trim();
        StringRequest stringRequest=new StringRequest(Request.Method.GET,url
                ,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONArray jsonArray=new JSONArray(response) ;
                            for (int i = 0; i < jsonArray.length(); i++) {
                                JSONObject jsonobject = jsonArray.getJSONObject(i);
                                BeautyHomeItem item=new BeautyHomeItem(jsonobject.getString("id"), jsonobject.getString("name"),
                                        replaceBySlash(jsonobject.getString("thumbnail")), jsonobject.getString("description"), jsonobject.getString("price"),
                                        jsonobject.getString("hidden"), jsonobject.getString("url1"),
                                        jsonobject.getString("url2"), jsonobject.getString("url3"), jsonobject.getString("url4"),
                                        jsonobject.getString("url5"), jsonobject.getString("url6"), jsonobject.getString("url7"),
                                        jsonobject.getString("url8"));
                                if(!item.getHidden().equals("1")) {
                                    items.add(item);
                                }
                            }

                            mAdapter.notifyDataSetChanged();
                            mProgressCircle.setVisibility(View.INVISIBLE);
                        }
                        catch (JSONException e)
                        {
                            Toast.makeText(ListOfItemsActivity.this,"خطأ في إحضار المعلومات من الخادم.",Toast.LENGTH_SHORT).show();
                        }

                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(ListOfItemsActivity.this,"خطأ في إحضار المعلومات من الخادم.",Toast.LENGTH_LONG).show();

            }
        });

        RequestQueue requestQueue=Volley.newRequestQueue(this);
        requestQueue.add(stringRequest);

    }

    @Override
    public void onItemClick(int position) {
        BeautyHomeItem selectedItem = items.get(position);

        Intent intent = new Intent(this, FullScreenViewActivity.class);
        intent.putExtra("URL1", selectedItem.getUrl1());
        intent.putExtra("URL2", selectedItem.getUrl2());
        intent.putExtra("URL3", selectedItem.getUrl3());
        intent.putExtra("URL4", selectedItem.getUrl4());
        intent.putExtra("URL5", selectedItem.getUrl5());
        intent.putExtra("URL6", selectedItem.getUrl6());
        intent.putExtra("URL7", selectedItem.getUrl7());
        intent.putExtra("URL8", selectedItem.getUrl8());

        startActivity(intent);

    }

    @Override
    public void onWhatEverClick(int position) {
    }

    @Override
    public void onDeleteClick(int position) {

    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    private String replaceBySlash(String s)
    {
        if(!s.isEmpty())
        {
            s=s.replace('/','/');
        }

        return s;
    }
}