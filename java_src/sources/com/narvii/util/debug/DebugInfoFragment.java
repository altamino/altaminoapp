package com.narvii.util.debug;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.crashlytics.DevLogger;
import com.ss.android.tea.common.applog.d;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class DebugInfoFragment extends NVFragment {
    String info;
    LarkRobot larkRobot = new LarkRobot(this);
    String simpleInfo;

    public String getClipboard() {
        ClipData primaryClip;
        CharSequence text;
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        if (!clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || (text = primaryClip.getItemAt(0).getText()) == null) {
            return null;
        }
        return text.toString();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Debug info");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.debug_info, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        final String clipboard = getClipboard();
        new Thread() { // from class: com.narvii.util.debug.DebugInfoFragment.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                StringBuilder sb = new StringBuilder();
                try {
                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(DebugInfoFragment.this.getContext());
                    sb.append("advertisingId: ");
                    sb.append(advertisingIdInfo.getId());
                    if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                        sb.append("[disabled!]");
                    }
                    sb.append('\n');
                } catch (Exception unused) {
                }
                String string = sb.toString();
                String string2 = Settings.Secure.getString(DebugInfoFragment.this.getContext().getContentResolver(), "android_id");
                String strD = d.d();
                HashMap map = new HashMap();
                d.c(map);
                sb.setLength(0);
                sb.append(DevLogger.summary(DebugInfoFragment.this));
                sb.append(string);
                sb.append("androidId: ");
                sb.append(string2);
                sb.append('\n');
                sb.append("clipboard: ");
                sb.append(clipboard);
                sb.append('\n');
                sb.append("tea_ssid: ");
                sb.append(strD);
                sb.append('\n');
                for (Map.Entry entry : map.entrySet()) {
                    sb.append("tea_");
                    sb.append((String) entry.getKey());
                    sb.append(": ");
                    sb.append((String) entry.getValue());
                    sb.append('\n');
                }
                sb.append("tea_ab_configs: ");
                sb.append(d.b());
                Log.i(sb.toString());
                DebugInfoFragment.this.simpleInfo = sb.toString();
                sb.append("\n\n\n");
                sb.append(DevLogger.prefs(DebugInfoFragment.this));
                sb.append("\n\n\n");
                DevLogger devLogger = CrashlyticsUtils.devLogger;
                if (devLogger != null) {
                    devLogger.appendTo(sb);
                }
                DebugInfoFragment.this.info = sb.toString();
                Utils.handler.post(new Runnable() { // from class: com.narvii.util.debug.DebugInfoFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ((TextView) DebugInfoFragment.this.getView().findViewById(R.id.text)).setText(DebugInfoFragment.this.info);
                    }
                });
            }
        }.start();
        setActionBarRightButton("Send", new View.OnClickListener() { // from class: com.narvii.util.debug.DebugInfoFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                DebugInfoFragment debugInfoFragment = DebugInfoFragment.this;
                debugInfoFragment.larkRobot.send("Device Info", debugInfoFragment.simpleInfo);
            }
        });
    }
}
