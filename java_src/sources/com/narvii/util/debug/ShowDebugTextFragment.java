package com.narvii.util.debug;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public class ShowDebugTextFragment extends NVFragment {
    LarkRobot larkRobot = new LarkRobot(this);

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.debug_show_text, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        final String stringParam = getStringParam("text");
        ((TextView) view.findViewById(R.id.text)).setText(stringParam);
        setActionBarRightButton("Send", new View.OnClickListener() { // from class: com.narvii.util.debug.ShowDebugTextFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ShowDebugTextFragment.this.larkRobot.send("Error", stringParam);
            }
        });
    }
}
