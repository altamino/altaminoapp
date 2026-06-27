package com.narvii.user.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.CollectionUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BioBriefView.kt */
/* loaded from: classes3.dex */
public final class BioBriefView extends FrameLayout {
    private HashMap _$_findViewCache;
    private final TintButton arrowBtn;
    private final ViewGroup bioContainer;
    private final TextView bioTV;
    private final TextView emptyTV;
    private boolean hasBioContent;

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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BioBriefView(Context context) {
        this(context, null);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BioBriefView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BioBriefView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.bio_brief_layout, this);
        View viewFindViewById = findViewById(R.id.chevron);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.chevron)");
        this.arrowBtn = (TintButton) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.content_empty);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.content_empty)");
        this.emptyTV = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.bio_content);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.bio_content)");
        this.bioTV = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.content_container);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.content_container)");
        this.bioContainer = (ViewGroup) viewFindViewById4;
    }

    public final void setBio(User user, boolean z, boolean z2, BioBriefStyle style) {
        ViewGroup viewGroup;
        Intrinsics.checkParameterIsNotNull(user, "user");
        Intrinsics.checkParameterIsNotNull(style, "style");
        style.setEmptyTVStyle(this.emptyTV, z, z2);
        style.setBioTVStyle(this.bioTV, z2);
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
                View viewFindViewById = findViewById(R.id.image_flow_layout);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById<View>(R.id.image_flow_layout)");
                viewFindViewById.setVisibility(8);
                View viewFindViewById2 = findViewById(R.id.image_container);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.image_container)");
                viewGroup = (ViewGroup) viewFindViewById2;
            } else {
                View viewFindViewById3 = findViewById(R.id.image_container);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById<View>(R.id.image_container)");
                viewFindViewById3.setVisibility(8);
                View viewFindViewById4 = findViewById(R.id.image_flow_layout);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.image_flow_layout)");
                viewGroup = (ViewGroup) viewFindViewById4;
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
                for (int i = 0; i < size2; i++) {
                    Media media = user.getBioMedias().get(i);
                    NVImageView nVImageView = new NVImageView(getContext());
                    style.setSnippetImageStyle(nVImageView, z2);
                    nVImageView.setImageMedia(media);
                    viewGroup.addView(nVImageView);
                }
            }
            this.bioTV.setText(strCompactContent);
        }
        style.setArrowBtnStyle(this.arrowBtn, z2);
    }

    public final boolean hasBioContent() {
        return this.hasBioContent;
    }
}
