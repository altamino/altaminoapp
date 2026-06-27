package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.lib.R;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PickerSelectedView.kt */
/* loaded from: classes3.dex */
public final class PickerSelectedView extends FrameLayout {
    private HashMap _$_findViewCache;
    private ImageView image;
    private boolean selectedMedia;
    private int selectedPosition;
    private TextView title;

    public PickerSelectedView(Context context) {
        this(context, null, 0, 6, null);
    }

    public PickerSelectedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PickerSelectedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.picker_selected_view, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R.id.image);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.image)");
        this.image = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.title)");
        this.title = (TextView) viewFindViewById2;
        updateView();
    }

    public /* synthetic */ PickerSelectedView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final void update(boolean z) {
        update(z, this.selectedPosition);
    }

    public final void update(boolean z, int i) {
        this.selectedMedia = z;
        this.selectedPosition = i;
        updateView();
    }

    private final void updateView() {
        if (this.selectedMedia) {
            if (this.selectedPosition > 0) {
                this.image.setImageResource(R.drawable.ic_media_selected_bg);
                this.title.setVisibility(0);
                this.title.setText(String.valueOf(this.selectedPosition));
                return;
            } else {
                this.image.setImageResource(R.drawable.ic_media_selected);
                this.title.setVisibility(8);
                return;
            }
        }
        this.image.setImageResource(R.drawable.ic_media_not_selected);
        this.title.setVisibility(8);
    }
}
