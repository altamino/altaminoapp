package com.narvii.user.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.CollectionUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class BioBriefView extends FrameLayout {

    @NotNull
    private final TintButton arrowBtn;

    @NotNull
    private final ViewGroup bioContainer;

    @NotNull
    private final TextView bioTV;

    @NotNull
    private final TextView emptyTV;
    private boolean hasBioContent;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BioBriefView(@NotNull Context context) {
        this(context, null);
        t.j(context, "context");
    }

    public final boolean hasBioContent() {
        return this.hasBioContent;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BioBriefView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        t.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BioBriefView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        View.inflate(getContext(), R.layout.bio_brief_layout, this);
        View viewFindViewById = findViewById(R.id.chevron);
        t.i(viewFindViewById, "findViewById(...)");
        this.arrowBtn = (TintButton) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.content_empty);
        t.i(viewFindViewById2, "findViewById(...)");
        this.emptyTV = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.bio_content);
        t.i(viewFindViewById3, "findViewById(...)");
        this.bioTV = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.content_container);
        t.i(viewFindViewById4, "findViewById(...)");
        this.bioContainer = (ViewGroup) viewFindViewById4;
    }

    public final void setBio(@NotNull User user, boolean z6, boolean z10, @NotNull BioBriefStyle style) {
        ViewGroup viewGroup;
        t.j(user, "user");
        t.j(style, "style");
        style.setEmptyTVStyle(this.emptyTV, z6, z10);
        style.setBioTVStyle(this.bioTV, z10);
        int size = CollectionUtils.getSize(user.getBioMedias());
        String strCompactContent = TextUtils.compactContent(user.content);
        boolean zIsEmpty = TextUtils.isEmpty(strCompactContent);
        if (size == 0 && zIsEmpty) {
            this.emptyTV.setVisibility(0);
            this.bioContainer.setVisibility(8);
            this.hasBioContent = false;
        } else {
            this.emptyTV.setVisibility(8);
            this.bioContainer.setVisibility(0);
            this.hasBioContent = true;
            if (!zIsEmpty) {
                findViewById(R.id.image_flow_layout).setVisibility(8);
                View viewFindViewById = findViewById(R.id.image_container);
                t.g(viewFindViewById);
                viewGroup = (ViewGroup) viewFindViewById;
            } else {
                findViewById(R.id.image_container).setVisibility(8);
                View viewFindViewById2 = findViewById(R.id.image_flow_layout);
                t.g(viewFindViewById2);
                viewGroup = (ViewGroup) viewFindViewById2;
            }
            viewGroup.removeAllViews();
            if (size == 0) {
                viewGroup.setVisibility(8);
            } else {
                viewGroup.setVisibility(0);
                int size2 = user.getBioMedias().size();
                if (!zIsEmpty) {
                    size2 = Math.min(size2, 1);
                }
                for (int i10 = 0; i10 < size2; i10++) {
                    Media media = user.getBioMedias().get(i10);
                    NVImageView nVImageView = new NVImageView(getContext());
                    style.setSnippetImageStyle(nVImageView, z10);
                    nVImageView.setImageMedia(media);
                    viewGroup.addView(nVImageView);
                }
            }
            this.bioTV.setText(strCompactContent);
        }
        style.setArrowBtnStyle(this.arrowBtn, z10);
    }
}
