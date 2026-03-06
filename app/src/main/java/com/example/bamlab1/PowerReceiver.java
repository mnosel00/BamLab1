package com.example.bamlab1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class PowerReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {

        Log.d("BAMLABx", "PowerReceiver: Złapałem komunikat! Akcja: " + intent.getAction());

        Intent secondActivityIntent = new Intent(context, SecondActivity.class);

        secondActivityIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

        context.startActivity(secondActivityIntent);
    }
}