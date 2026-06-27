package com.narvii.util.debug;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class ShowDebugTextFragment extends NVFragment {
    LarkRobot larkRobot = new LarkRobot(this);

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.debug_show_text, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onViewCreated(view, bundle);
        final String stringParam = getStringParam(MimeTypes.BASE_TYPE_TEXT);
        ((TextView) view.findViewById(R.id.text)).setText(stringParam);
        setActionBarRightButton("Send", new View.OnClickListener() { // from class: com.narvii.util.debug.ShowDebugTextFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ShowDebugTextFragment.this.larkRobot.send("Error", stringParam);
            }
        });
    }
}
