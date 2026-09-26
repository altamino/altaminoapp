package com.narvii.scene.service;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class BaseBottomSheetBehaviorService$bottomSheetCallback$2 extends v implements e8.a<AnonymousClass1> {
    final /* synthetic */ BaseBottomSheetBehaviorService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseBottomSheetBehaviorService$bottomSheetCallback$2(BaseBottomSheetBehaviorService baseBottomSheetBehaviorService) {
        super(0);
        this.this$0 = baseBottomSheetBehaviorService;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.narvii.scene.service.BaseBottomSheetBehaviorService$bottomSheetCallback$2$1] */
    @Override // e8.a
    @NotNull
    public final AnonymousClass1 invoke() {
        final BaseBottomSheetBehaviorService baseBottomSheetBehaviorService = this.this$0;
        return new BottomSheetBehavior.f() { // from class: com.narvii.scene.service.BaseBottomSheetBehaviorService$bottomSheetCallback$2.1
            private float oldOffset = -1.0f;

            public final float getOldOffset() {
                return this.oldOffset;
            }

            public final void setOldOffset(float f) {
                this.oldOffset = f;
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
            public void onSlide(@NotNull View bottomSheet, float f) {
                t.j(bottomSheet, "bottomSheet");
                if (this.oldOffset == -1.0f) {
                    this.oldOffset = f;
                }
                if (f - this.oldOffset < 0.0f && f < 0.05d) {
                    baseBottomSheetBehaviorService.updateRootView(false);
                }
                this.oldOffset = f;
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
            public void onStateChanged(@NotNull View bottomSheet, int i10) {
                t.j(bottomSheet, "bottomSheet");
                baseBottomSheetBehaviorService.setBottomState(Integer.valueOf(i10));
                if (i10 == 4) {
                    baseBottomSheetBehaviorService.updateRootView(false);
                    baseBottomSheetBehaviorService.onCollapsed();
                }
            }
        };
    }
}
