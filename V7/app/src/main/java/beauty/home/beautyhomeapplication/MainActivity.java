package beauty.home.beautyhomeapplication;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;


public class MainActivity extends AppCompatActivity {

    private Button mButtonMakeUp;
    private Button mButtonAccessories;
    private Button mButtonPerfumes;
    private Button mButtonClothes;
    private Button mButtonShoes;
    private Button mButtonOffers;
    private Button mButtonAbout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mButtonMakeUp = findViewById(R.id.button_makeup);
        mButtonAccessories = findViewById(R.id.button_accessories);
        mButtonPerfumes = findViewById(R.id.button_perfumes);
        mButtonClothes = findViewById(R.id.button_clothes);
        mButtonShoes = findViewById(R.id.button_shoes);
        mButtonOffers = findViewById(R.id.button_offers);
        mButtonAbout = findViewById(R.id.button_about);

        mButtonMakeUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                openCategory(Constants.MAKE_UP);
            }
        });

        mButtonAccessories.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openCategory(Constants.ACCESSORIES);
            }
        });
        mButtonPerfumes.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openCategory(Constants.PERFUMES);
            }
        });
        mButtonClothes.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openCategory(Constants.CLOTHES);
            }
        });
        mButtonShoes.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openCategory(Constants.SHOES);
            }
        });

        mButtonOffers.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openCategory(Constants.OFFERS);
            }
        });


        mButtonAbout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openAbout();
            }
        });

    }

    private void openCategory(String category) {
        Intent intent = new Intent(this, ListOfItemsActivity.class);
        intent.putExtra("TYPE", category);
        startActivity(intent);
    }

    private void openAbout() {
        Intent intent = new Intent(this, AboutActivity.class);
        startActivity(intent);
    }
}
