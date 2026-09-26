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
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.applovin.sdk.AppLovinSdk;
import com.codemonkeylabs.fpslibrary.h;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.PendingIntentUtils;
import com.narvii.util.image.Screenshot;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class DebugService implements com.squareup.seismic.a.InterfaceC0372a {
    public static final String LAUNCH_APP_LOVIN_MEDIATOR_DEBUGGER = "Launch AppLovinMediatorDebugger";
    NVContext context;
    SharedPreferences preferences;
    com.squareup.seismic.a shakeDetector;
    boolean shakeDialogShown;
    boolean showingFPS;
    WeakReference<Activity> topActivity;

    public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    private void launchAppLovingMediatorDebugger() {
        try {
            AppLovinSdk.getInstance(this.context.getContext()).showMediationDebugger();
        } catch (Exception e) {
            Toast.makeText(this.context.getContext(), "App Lovin Mediator can not be launched: " + e.getLocalizedMessage(), 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartApp() {
        ((AlarmManager) this.context.getContext().getApplicationContext().getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, System.currentTimeMillis() + 100, PendingIntent.getActivity(this.context.getContext().getApplicationContext(), 1000, this.context.getContext().getPackageManager().getLaunchIntentForPackage(this.context.getContext().getPackageName()), PendingIntentUtils.INSTANCE.getCurrentImmutableFlag(268435456)));
        System.exit(0);
    }

    void apiServerHostDialog(Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("API Server");
        final EditText editText = new EditText(activity);
        editText.setHint("services.pabkit.com");
        editText.setInputType(160);
        editText.setText(this.preferences.getString("apiServerHost", null));
        builder.setView(editText);
        builder.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.util.debug.DebugService.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
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
            public void onClick(DialogInterface dialogInterface, int i10) {
            }
        });
        builder.setNeutralButton("PROD", new DialogInterface.OnClickListener() { // from class: com.narvii.util.debug.DebugService.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                DebugService.this.preferences.edit().putBoolean("fakeProduction", true).remove("apiServerHost").commit();
                DebugService.this.restartApp();
            }
        });
        builder.show();
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
        arrayList.add(LAUNCH_APP_LOVIN_MEDIATOR_DEBUGGER);
    }

    @Override // com.squareup.seismic.a.InterfaceC0372a
    public void hearShake() {
        if (this.shakeDialogShown) {
            return;
        }
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
            public void onClick(DialogInterface dialogInterface, int i10) {
                DebugService.this.onDebugMenuClick(activity, (CharSequence) arrayList.get(i10));
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
            safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(activity, new Intent(activity, (Class<?>) ResetProcessActivity.class));
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
            h.a().e(this.context.getContext());
            this.showingFPS = true;
        }
        if ("Hide FPS".equals(charSequence)) {
            h.b(this.context.getContext());
            this.showingFPS = false;
        }
        if ("Enable Verbose Log".equals(charSequence)) {
            this.preferences.edit().putBoolean("verboseLog", true).apply();
        }
        if ("Disable Verbose Log".equals(charSequence)) {
            this.preferences.edit().putBoolean("verboseLog", false).apply();
        }
        if (LAUNCH_APP_LOVIN_MEDIATOR_DEBUGGER.contentEquals(charSequence)) {
            launchAppLovingMediatorDebugger();
        }
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

    public DebugService(NVContext nVContext) {
        this.context = nVContext;
        com.squareup.seismic.a aVar = new com.squareup.seismic.a(this);
        this.shakeDetector = aVar;
        aVar.b(15);
        this.preferences = nVContext.getContext().getSharedPreferences("__debug", 0);
    }
}
