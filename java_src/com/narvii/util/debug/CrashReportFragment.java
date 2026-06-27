package com.narvii.util.debug;

import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.modulization.ConfigApiRequestHelper;
import com.narvii.util.Utils;
import java.io.File;

/* loaded from: classes3.dex */
public class CrashReportFragment extends NVFragment {
    String info;
    LarkRobot larkRobot = new LarkRobot(this);
    File screenshot;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        File file = new File(getStringParam(ConfigApiRequestHelper.PATH_KEY));
        setTitle(file.getName());
        this.info = Utils.readStringFromFile(file);
        String name = file.getName();
        if (name.lastIndexOf(46) != -1) {
            String strSubstring = name.substring(0, name.lastIndexOf(46));
            File file2 = new File(file.getParentFile(), strSubstring + ".jpg");
            if (file2.length() <= 0) {
                file2 = null;
            }
            this.screenshot = file2;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.debug_info, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onViewCreated(view, bundle);
        ImageView imageView = (ImageView) view.findViewById(R.id.image);
        if (this.screenshot != null) {
            imageView.setVisibility(0);
            imageView.setImageURI(Uri.fromFile(this.screenshot));
        }
        ((TextView) view.findViewById(R.id.text)).setText(this.info);
        setActionBarRightButton("Send", new View.OnClickListener() { // from class: com.narvii.util.debug.CrashReportFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CrashReportFragment crashReportFragment = CrashReportFragment.this;
                crashReportFragment.larkRobot.send("Crash", crashReportFragment.info);
            }
        });
    }
}
