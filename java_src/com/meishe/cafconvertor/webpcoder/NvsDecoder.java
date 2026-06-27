package com.meishe.cafconvertor.webpcoder;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Window;
import com.meishe.cafconvertor.R$id;
import com.meishe.cafconvertor.R$layout;

/* loaded from: classes2.dex */
public class NvsDecoder extends Activity {
    private WebpImageView a;
    private String b = NvsDecoder.class.getSimpleName();
    private int c = -1;

    private static int a(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    private static int a(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        NvsDecodeF.nvsDecoder = this;
        int iA = a((Activity) this) - a((Context) this);
        Window window = getWindow();
        if (iA == 0) {
            iA = -1;
        }
        window.setLayout(-1, iA);
        setContentView(R$layout.activity_nvs_decoder);
        this.a = (WebpImageView) findViewById(R$id.webp_image_view);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.a.destroy();
    }
}
