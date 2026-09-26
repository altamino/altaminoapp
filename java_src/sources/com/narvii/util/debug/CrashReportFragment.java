package com.narvii.util.debug;

import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.modulization.ConfigApiRequestHelper;
import com.narvii.util.Utils;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class CrashReportFragment extends NVFragment {
    String info;
    LarkRobot larkRobot = new LarkRobot(this);
    File screenshot;

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.debug_info, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
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
