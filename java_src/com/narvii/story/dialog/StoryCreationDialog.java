package com.narvii.story.dialog;

import android.content.Context;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.blog.post.BlogPost;
import com.narvii.editor.cropping.dynamic.Utils;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.DraftInfo;
import com.narvii.post.DraftManager;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVGradientDrawable;
import com.narvii.widget.NVImageView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryCreationDialog.kt */
/* loaded from: classes3.dex */
public final class StoryCreationDialog extends NVDialog implements View.OnClickListener {
    private OnClickListener clickListener;
    private final NVImageView draftCover;
    private final View draftCoverDefault;
    private final NVContext nvContext;

    /* compiled from: StoryCreationDialog.kt */
    public interface OnClickListener {
        void onCreateNewClick(View view);

        void onViewDraftClick(View view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryCreationDialog(NVContext nvContext) {
        super(nvContext, R.style.CustomDialog);
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        this.nvContext = nvContext;
        setContentView(R.layout.dialog_story_creation);
        View viewFindViewById = findViewById(R.id.item_bg);
        NVGradientDrawable nVGradientDrawable = new NVGradientDrawable((int) 4285299196L, (int) 4287579647L);
        float dimensionPixelSize = viewFindViewById.getResources().getDimensionPixelSize(R.dimen.story_creation_corner);
        nVGradientDrawable.setRadius(new float[]{dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize});
        viewFindViewById.setBackground(nVGradientDrawable);
        View viewFindViewById2 = findViewById(R.id.draft_cover_default);
        NVGradientDrawable nVGradientDrawable2 = new NVGradientDrawable((int) 4287664639L, (int) 4286795007L);
        Utils.Companion companion = Utils.Companion;
        Context context = viewFindViewById2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        float fDptopx = companion.dptopx(context, 8.0f);
        nVGradientDrawable2.setRadius(new float[]{fDptopx, fDptopx, fDptopx, fDptopx, fDptopx, fDptopx, fDptopx, fDptopx});
        viewFindViewById2.setBackground(nVGradientDrawable2);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById<View>(R.id.…)\n            }\n        }");
        this.draftCoverDefault = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.iv_draft_cover);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.iv_draft_cover)");
        this.draftCover = (NVImageView) viewFindViewById3;
        findViewById(R.id.iv_delete).setOnClickListener(this);
        findViewById(R.id.rl_create_new).setOnClickListener(this);
        findViewById(R.id.rl_view_drafts).setOnClickListener(this);
        DraftManager draftManager = (DraftManager) this.nvContext.getService(EntryManager.ENTRY_DRAFT);
        DraftInfo latestDraftInfo = draftManager.getLatestDraftInfo("story");
        String strIcon = null;
        if (latestDraftInfo != null) {
            try {
                BlogPost blogPost = (BlogPost) draftManager.readPost(latestDraftInfo.id, BlogPost.class);
                if (blogPost != null) {
                    strIcon = blogPost.icon();
                }
            } catch (Exception unused) {
            }
        }
        if (!TextUtils.isEmpty(strIcon)) {
            this.draftCover.setVisibility(0);
            this.draftCoverDefault.setVisibility(4);
            this.draftCover.setImageUrl(strIcon);
        } else {
            this.draftCover.setVisibility(4);
            this.draftCoverDefault.setVisibility(0);
        }
    }

    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public final void setOnClickListener(OnClickListener clickListener) {
        Intrinsics.checkParameterIsNotNull(clickListener, "clickListener");
        this.clickListener = clickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.rl_create_new) {
            OnClickListener onClickListener = this.clickListener;
            if (onClickListener != null) {
                onClickListener.onCreateNewClick(view);
            }
            dismiss();
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.rl_view_drafts) {
            OnClickListener onClickListener2 = this.clickListener;
            if (onClickListener2 != null) {
                onClickListener2.onViewDraftClick(view);
            }
            dismiss();
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.iv_delete) {
            dismiss();
        }
    }
}
