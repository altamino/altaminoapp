package com.narvii.detail;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.master.R;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public class DividerItem extends LinearLayout {
    static final int[] ids = {R.string.fa_asterisk, R.string.fa_space_shuttle, R.string.fa_anchor, R.string.fa_beer, R.string.fa_bell, R.string.fa_certificate, R.string.fa_child, R.string.fa_coffee, R.string.fa_fighter_jet, R.string.fa_fire, R.string.fa_flag, R.string.fa_gamepad, R.string.fa_gift, R.string.fa_glass, R.string.fa_headphones, R.string.fa_leaf, R.string.fa_music, R.string.fa_paper_plane, R.string.fa_paw, R.string.fa_ticket, R.string.fa_tree, R.string.fa_trophy, R.string.fa_umbrella};
    TextView t1;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    TextView f2244t2;

    /* JADX INFO: renamed from: t3, reason: collision with root package name */
    TextView f2245t3;

    /* JADX INFO: renamed from: t4, reason: collision with root package name */
    TextView f2246t4;

    public DividerItem(Context context) {
        this(context, null);
    }

    public DividerItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public static int getRandomDividerStringId(String str) {
        Random random = new Random(str == null ? System.currentTimeMillis() : str.hashCode());
        int[] iArr = ids;
        return iArr[random.nextInt(iArr.length)];
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.t1 = (TextView) findViewById(R.id.stub1);
        this.f2244t2 = (TextView) findViewById(R.id.stub2);
        this.f2245t3 = (TextView) findViewById(R.id.stub3);
        this.f2246t4 = (TextView) findViewById(R.id.stub4);
    }

    public void setId(String str) {
        String string = getContext().getString(getRandomDividerStringId(str));
        this.t1.setText(string);
        this.f2244t2.setText(string);
        this.f2245t3.setText(string);
        this.f2246t4.setText(string);
    }
}
