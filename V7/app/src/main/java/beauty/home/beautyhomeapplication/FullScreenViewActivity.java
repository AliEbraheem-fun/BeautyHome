package beauty.home.beautyhomeapplication;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import androidx.viewpager.widget.ViewPager;

import java.util.ArrayList;

public class FullScreenViewActivity extends Activity {

    private FullScreenImageAdapter adapter;
    private ViewPager viewPager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fullscreen_view);

        viewPager = (ViewPager) findViewById(R.id.pager);

        ArrayList<String> urls=new ArrayList<>();

        //----------------------------------------------
        String url=getIntent().getStringExtra("URL1");
        if(!url.isEmpty()&& !url.equals("null"))
        {
            urls.add(url);
        }
        //----------------------------------------------
        url=getIntent().getStringExtra("URL2");
        if(!url.isEmpty()&& !url.equals("null"))
        {
            urls.add(url);
        }
        //----------------------------------------------
        url=getIntent().getStringExtra("URL3");
        if(!url.isEmpty()&& !url.equals("null"))
        {
            urls.add(url);
        }
        //----------------------------------------------
        url=getIntent().getStringExtra("URL4");
        if(!url.isEmpty()&& !url.equals("null"))
        {
            urls.add(url);
        }
        //----------------------------------------------
        url=getIntent().getStringExtra("URL5");
        if(!url.isEmpty()&& !url.equals("null"))
        {
            urls.add(url);
        }
        //----------------------------------------------
        url=getIntent().getStringExtra("URL6");
        if(!url.isEmpty()&& !url.equals("null"))
        {
            urls.add(url);
        }
        //----------------------------------------------
        url=getIntent().getStringExtra("URL7");
        if(!url.isEmpty()&& !url.equals("null"))
        {
            urls.add(url);
        }
        //----------------------------------------------
        url=getIntent().getStringExtra("URL8");
        if(!url.isEmpty()&& !url.equals("null"))
        {
            urls.add(url);
        }

        adapter = new FullScreenImageAdapter(FullScreenViewActivity.this,
                urls);

        viewPager.setAdapter(adapter);

        // displaying selected image first
        viewPager.setCurrentItem(0);
    }
}
