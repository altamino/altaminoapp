package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
interface ViewTypeStorage {

    public static class IsolatedViewTypeStorage implements ViewTypeStorage {
        SparseArray<NestedAdapterWrapper> mGlobalTypeToWrapper = new SparseArray<>();
        int mNextViewType = 0;

        class WrapperViewTypeLookup implements ViewTypeLookup {
            final NestedAdapterWrapper mWrapper;
            private SparseIntArray mLocalToGlobalMapping = new SparseIntArray(1);
            private SparseIntArray mGlobalToLocalMapping = new SparseIntArray(1);

            WrapperViewTypeLookup(NestedAdapterWrapper nestedAdapterWrapper) {
                this.mWrapper = nestedAdapterWrapper;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int a(int i10) {
                int iIndexOfKey = this.mLocalToGlobalMapping.indexOfKey(i10);
                if (iIndexOfKey > -1) {
                    return this.mLocalToGlobalMapping.valueAt(iIndexOfKey);
                }
                int iC = IsolatedViewTypeStorage.this.c(this.mWrapper);
                this.mLocalToGlobalMapping.put(i10, iC);
                this.mGlobalToLocalMapping.put(iC, i10);
                return iC;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int b(int i10) {
                int iIndexOfKey = this.mGlobalToLocalMapping.indexOfKey(i10);
                if (iIndexOfKey >= 0) {
                    return this.mGlobalToLocalMapping.valueAt(iIndexOfKey);
                }
                throw new IllegalStateException("requested global type " + i10 + " does not belong to the adapter:" + this.mWrapper.adapter);
            }
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public NestedAdapterWrapper a(int i10) {
            NestedAdapterWrapper nestedAdapterWrapper = this.mGlobalTypeToWrapper.get(i10);
            if (nestedAdapterWrapper != null) {
                return nestedAdapterWrapper;
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i10);
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup b(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            return new WrapperViewTypeLookup(nestedAdapterWrapper);
        }

        int c(NestedAdapterWrapper nestedAdapterWrapper) {
            int i10 = this.mNextViewType;
            this.mNextViewType = i10 + 1;
            this.mGlobalTypeToWrapper.put(i10, nestedAdapterWrapper);
            return i10;
        }
    }

    public static class SharedIdRangeViewTypeStorage implements ViewTypeStorage {
        SparseArray<List<NestedAdapterWrapper>> mGlobalTypeToWrapper = new SparseArray<>();

        class WrapperViewTypeLookup implements ViewTypeLookup {
            final NestedAdapterWrapper mWrapper;

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int b(int i10) {
                return i10;
            }

            WrapperViewTypeLookup(NestedAdapterWrapper nestedAdapterWrapper) {
                this.mWrapper = nestedAdapterWrapper;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int a(int i10) {
                List<NestedAdapterWrapper> arrayList = SharedIdRangeViewTypeStorage.this.mGlobalTypeToWrapper.get(i10);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    SharedIdRangeViewTypeStorage.this.mGlobalTypeToWrapper.put(i10, arrayList);
                }
                if (!arrayList.contains(this.mWrapper)) {
                    arrayList.add(this.mWrapper);
                }
                return i10;
            }
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public NestedAdapterWrapper a(int i10) {
            List<NestedAdapterWrapper> list = this.mGlobalTypeToWrapper.get(i10);
            if (list != null && !list.isEmpty()) {
                return list.get(0);
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i10);
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup b(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
            return new WrapperViewTypeLookup(nestedAdapterWrapper);
        }
    }

    public interface ViewTypeLookup {
        int a(int i10);

        int b(int i10);
    }

    @NonNull
    NestedAdapterWrapper a(int i10);

    @NonNull
    ViewTypeLookup b(@NonNull NestedAdapterWrapper nestedAdapterWrapper);
}
