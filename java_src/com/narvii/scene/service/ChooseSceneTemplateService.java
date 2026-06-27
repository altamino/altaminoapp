package com.narvii.scene.service;

import android.os.Bundle;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.scene.TemplateListFragment;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.util.Log;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.Utils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChooseSceneTemplateService.kt */
/* loaded from: classes3.dex */
public final class ChooseSceneTemplateService extends BaseBottomSheetBehaviorService implements View.OnClickListener, TemplateListFragment.OnChooseTemplateListener {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "ChooseSceneTemplateService";
    private int from;
    private TemplateListFragment.OnChooseTemplateListener onChooseTemplateListener;
    private TemplateListFragment templateListFragment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChooseSceneTemplateService(NVContext ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.from = 2;
    }

    public final TemplateListFragment getTemplateListFragment() {
        return this.templateListFragment;
    }

    public final void setTemplateListFragment(TemplateListFragment templateListFragment) {
        this.templateListFragment = templateListFragment;
    }

    public final TemplateListFragment.OnChooseTemplateListener getOnChooseTemplateListener() {
        return this.onChooseTemplateListener;
    }

    public final void setOnChooseTemplateListener(TemplateListFragment.OnChooseTemplateListener onChooseTemplateListener) {
        this.onChooseTemplateListener = onChooseTemplateListener;
    }

    public final int getFrom() {
        return this.from;
    }

    public final void setFrom(int i) {
        this.from = i;
    }

    /* compiled from: ChooseSceneTemplateService.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public int initBottomLayout() {
        return R.layout.layout_bottom_sheet;
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void onBottomLayoutCreated(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onBottomLayoutCreated(view);
        view.findViewById(R.id.out_area).setOnClickListener(new OnPreventRepeatedClickListener(this) { // from class: com.narvii.scene.service.ChooseSceneTemplateService.onBottomLayoutCreated.1
        });
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public NVFragment initFragment() {
        this.templateListFragment = new TemplateListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("from", this.from);
        TemplateListFragment templateListFragment = this.templateListFragment;
        if (templateListFragment != null) {
            templateListFragment.setArguments(bundle);
        }
        TemplateListFragment templateListFragment2 = this.templateListFragment;
        if (templateListFragment2 != null) {
            templateListFragment2.setOnChooseTemplateListener(this);
        }
        TemplateListFragment templateListFragment3 = this.templateListFragment;
        if (templateListFragment3 != null) {
            return templateListFragment3;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void show() {
        if (getRootView() == null) {
            init();
            TemplateListFragment templateListFragment = this.templateListFragment;
            if (templateListFragment != null) {
                templateListFragment.show();
            }
            updateRootView(true);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.service.ChooseSceneTemplateService.show.1
                @Override // java.lang.Runnable
                public final void run() {
                    ChooseSceneTemplateService.this.updateBottomSheet(3);
                }
            }, 100L);
            return;
        }
        showContent();
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void showContent() {
        TemplateListFragment templateListFragment = this.templateListFragment;
        if (templateListFragment != null) {
            templateListFragment.show();
        }
        super.showContent();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dismiss();
    }

    @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
    public void onChoose(TemplateConfig template) {
        Intrinsics.checkParameterIsNotNull(template, "template");
        Log.d(TAG, "choose template >>>  url = " + template.coverImageUrl);
        TemplateListFragment.OnChooseTemplateListener onChooseTemplateListener = this.onChooseTemplateListener;
        if (onChooseTemplateListener != null) {
            onChooseTemplateListener.onChoose(template);
        }
    }

    @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
    public void onDismiss() {
        dismiss();
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void onCollapsed() {
        TemplateListFragment templateListFragment = this.templateListFragment;
        if (templateListFragment != null) {
            templateListFragment.hide();
        }
        TemplateListFragment.OnChooseTemplateListener onChooseTemplateListener = this.onChooseTemplateListener;
        if (onChooseTemplateListener != null) {
            onChooseTemplateListener.onDismiss();
        }
    }
}
