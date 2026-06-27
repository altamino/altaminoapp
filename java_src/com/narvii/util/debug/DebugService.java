package com.narvii.util.debug;

import android.R;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.widget.EditText;
import android.widget.TextView;
import com.codemonkeylabs.fpslibrary.TinyDancer;
import com.google.android.exoplayer2.C;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.image.Screenshot;
import com.squareup.seismic.ShakeDetector;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DebugService implements ShakeDetector.Listener {
    NVContext context;
    SharedPreferences preferences;
    ShakeDetector shakeDetector = new ShakeDetector(this);
    boolean shakeDialogShown;
    boolean showingFPS;
    WeakReference<Activity> topActivity;

    public DebugService(NVContext nVContext) {
        this.context = nVContext;
        this.shakeDetector.setSensitivity(15);
        this.preferences = nVContext.getContext().getSharedPreferences("__debug", 0);
    }

    @Override // com.squareup.seismic.ShakeDetector.Listener
    public void hearShake() {
        if (Build.VERSION.SDK_INT >= 17 && !this.shakeDialogShown) {
            WeakReference<Activity> weakReference = this.topActivity;
            final Activity activity = weakReference == null ? null : weakReference.get();
            if (activity == null || activity.isDestroyed()) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setTitle("Shake Detected!");
            final ArrayList<CharSequence> arrayList = new ArrayList<>();
            createDebugMenu(activity, arrayList);
            builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[arrayList.size()]), new DialogInterface.OnClickListener() { // from class: com.narvii.util.debug.DebugService.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    DebugService.this.onDebugMenuClick(activity, (CharSequence) arrayList.get(i));
                }
            });
            builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.util.debug.DebugService.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    DebugService.this.shakeDialogShown = false;
                }
            });
            this.shakeDialogShown = true;
            builder.show();
        }
    }

    protected void createDebugMenu(Activity activity, ArrayList<CharSequence> arrayList) {
        String string;
        arrayList.add("Current Activity Info");
        arrayList.add("Recreate Activity");
        arrayList.add("Reset Process");
        if (this.preferences.getBoolean("fakeProduction", false)) {
            string = "PROD";
        } else {
            string = this.preferences.getString("apiServerHost", null) != null ? this.preferences.getString("apiServerHost", null) : "DEV";
        }
        arrayList.add("API Server: " + string);
        arrayList.add(this.preferences.getBoolean("leakCanary", false) ? "Disable LeakCanary" : "Enable LeakCanary");
        arrayList.add(this.showingFPS ? "Hide FPS" : "FPS");
        arrayList.add(this.preferences.getBoolean("verboseLog", false) ? "Disable Verbose Log" : "Enable Verbose Log");
    }

    protected void onDebugMenuClick(Activity activity, CharSequence charSequence) {
        if ("Current Activity Info".equals(charSequence) && (activity instanceof NVActivity)) {
            String crashlyticsFootprint = ((NVActivity) activity).getCrashlyticsFootprint();
            TextView textView = new TextView(activity);
            textView.setTypeface(Typeface.MONOSPACE);
            textView.setTextSize(1, 12.0f);
            textView.setText(crashlyticsFootprint);
            new AlertDialog.Builder(activity).setView(textView).show();
        }
        if ("Recreate Activity".equals(charSequence)) {
            activity.recreate();
        }
        if ("Reset Process".equals(charSequence)) {
            activity.startActivity(new Intent(activity, (Class<?>) ResetProcessActivity.class));
        }
        if (String.valueOf(charSequence).startsWith("API Server:")) {
            apiServerHostDialog(activity);
        }
        if ("Enable LeakCanary".equals(charSequence)) {
            this.preferences.edit().putBoolean("leakCanary", true).commit();
            restartApp();
        }
        if ("Disable LeakCanary".equals(charSequence)) {
            this.preferences.edit().putBoolean("leakCanary", false).commit();
            restartApp();
        }
        if ("FPS".equals(charSequence)) {
            TinyDancer.create().show(this.context.getContext());
            this.showingFPS = true;
        }
        if ("Hide FPS".equals(charSequence)) {
            TinyDancer.hide(this.context.getContext());
            this.showingFPS = false;
        }
        if ("Enable Verbose Log".equals(charSequence)) {
            this.preferences.edit().putBoolean("verboseLog", true).apply();
        }
        if ("Disable Verbose Log".equals(charSequence)) {
            this.preferences.edit().putBoolean("verboseLog", false).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartApp() {
        ((AlarmManager) this.context.getContext().getApplicationContext().getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, System.currentTimeMillis() + 100, PendingIntent.getActivity(this.context.getContext().getApplicationContext(), 1000, this.context.getContext().getPackageManager().getLaunchIntentForPackage(this.context.getContext().getPackageName()), C.ENCODING_PCM_MU_LAW));
        System.exit(0);
    }

    void apiServerHostDialog(Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("API Server");
        final EditText editText = new EditText(activity);
        editText.setHint("services.pebkit.com");
        editText.setInputType(160);
        editText.setText(this.preferences.getString("apiServerHost", null));
        builder.setView(editText);
        builder.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.util.debug.DebugService.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String strTrim = editText.getText().toString().trim();
                if (strTrim.length() == 0) {
                    DebugService.this.preferences.edit().remove("fakeProduction").remove("apiServerHost").commit();
                } else {
                    DebugService.this.preferences.edit().remove("fakeProduction").putString("apiServerHost", strTrim).commit();
                }
                DebugService.this.restartApp();
            }
        });
        builder.setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.narvii.util.debug.DebugService.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.setNeutralButton("PROD", new DialogInterface.OnClickListener() { // from class: com.narvii.util.debug.DebugService.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DebugService.this.preferences.edit().putBoolean("fakeProduction", true).remove("apiServerHost").commit();
                DebugService.this.restartApp();
            }
        });
        builder.show();
    }

    public Bitmap takeScreenshot() {
        WeakReference<Activity> weakReference = this.topActivity;
        Activity activity = weakReference == null ? null : weakReference.get();
        if (activity != null) {
            try {
                return Screenshot.takeScreenshot(activity, 1.0f, 540, 960);
            } catch (Throwable th) {
                Log.e("fail to take screenshot", th);
            }
        }
        return null;
    }
}
