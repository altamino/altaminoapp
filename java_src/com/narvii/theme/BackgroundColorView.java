package com.narvii.theme;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class BackgroundColorView extends FrameLayout {
    public BackgroundColorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NVContext nVContext = Utils.getNVContext(context);
        if (nVContext != null) {
            setBackgroundColor(((ConfigService) nVContext.getService("config")).getTheme().colorPrimary());
        }
    }
}
