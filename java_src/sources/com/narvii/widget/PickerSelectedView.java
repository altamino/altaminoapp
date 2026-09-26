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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class PickerSelectedView extends FrameLayout {

    @NotNull
    private ImageView image;
    private boolean selectedMedia;
    private int selectedPosition;

    @NotNull
    private TextView title;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PickerSelectedView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    public final void update(boolean z6) {
        update(z6, this.selectedPosition);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PickerSelectedView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    private final void updateView() {
        if (!this.selectedMedia) {
            this.image.setImageResource(R.drawable.ic_media_not_selected);
            this.title.setVisibility(8);
        } else if (this.selectedPosition <= 0) {
            this.image.setImageResource(R.drawable.ic_media_selected);
            this.title.setVisibility(8);
        } else {
            this.image.setImageResource(R.drawable.ic_media_selected_bg);
            this.title.setVisibility(0);
            this.title.setText(String.valueOf(this.selectedPosition));
        }
    }

    public final void update(boolean z6, int i10) {
        this.selectedMedia = z6;
        this.selectedPosition = i10;
        updateView();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PickerSelectedView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.picker_selected_view, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R.id.image);
        t.i(viewFindViewById, "findViewById(...)");
        this.image = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.title);
        t.i(viewFindViewById2, "findViewById(...)");
        this.title = (TextView) viewFindViewById2;
        updateView();
    }

    public /* synthetic */ PickerSelectedView(Context context, AttributeSet attributeSet, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
