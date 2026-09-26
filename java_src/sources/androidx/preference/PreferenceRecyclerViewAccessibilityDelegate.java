package androidx.preference;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo
@Deprecated
public class PreferenceRecyclerViewAccessibilityDelegate extends RecyclerViewAccessibilityDelegate {
    final AccessibilityDelegateCompat mDefaultItemDelegate;
    final AccessibilityDelegateCompat mItemDelegate;
    final RecyclerView mRecyclerView;

    @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate
    @NonNull
    public AccessibilityDelegateCompat a() {
        return this.mItemDelegate;
    }

    public PreferenceRecyclerViewAccessibilityDelegate(@NonNull RecyclerView recyclerView) {
        super(recyclerView);
        this.mDefaultItemDelegate = super.a();
        this.mItemDelegate = new AccessibilityDelegateCompat() { // from class: androidx.preference.PreferenceRecyclerViewAccessibilityDelegate.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                Preference preferenceJ;
                PreferenceRecyclerViewAccessibilityDelegate.this.mDefaultItemDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                int childAdapterPosition = PreferenceRecyclerViewAccessibilityDelegate.this.mRecyclerView.getChildAdapterPosition(view);
                RecyclerView.Adapter adapter = PreferenceRecyclerViewAccessibilityDelegate.this.mRecyclerView.getAdapter();
                if ((adapter instanceof PreferenceGroupAdapter) && (preferenceJ = ((PreferenceGroupAdapter) adapter).j(childAdapterPosition)) != null) {
                    preferenceJ.S(accessibilityNodeInfoCompat);
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
                return PreferenceRecyclerViewAccessibilityDelegate.this.mDefaultItemDelegate.performAccessibilityAction(view, i10, bundle);
            }
        };
        this.mRecyclerView = recyclerView;
    }
}
