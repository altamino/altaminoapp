package androidx.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class DataBindingUtil {
    private static DataBinderMapper sMapper = new DataBinderMapperImpl();
    private static DataBindingComponent sDefaultComponent = null;

    @Nullable
    public static DataBindingComponent d() {
        return sDefaultComponent;
    }

    public static <T extends ViewDataBinding> T e(@NonNull LayoutInflater layoutInflater, int i10, @Nullable ViewGroup viewGroup, boolean z6, @Nullable DataBindingComponent dataBindingComponent) {
        boolean z10 = viewGroup != null && z6;
        return z10 ? (T) c(dataBindingComponent, viewGroup, z10 ? viewGroup.getChildCount() : 0, i10) : (T) a(dataBindingComponent, layoutInflater.inflate(i10, viewGroup, z6), i10);
    }

    static <T extends ViewDataBinding> T a(DataBindingComponent dataBindingComponent, View view, int i10) {
        return (T) sMapper.getDataBinder(dataBindingComponent, view, i10);
    }

    static <T extends ViewDataBinding> T b(DataBindingComponent dataBindingComponent, View[] viewArr, int i10) {
        return (T) sMapper.getDataBinder(dataBindingComponent, viewArr, i10);
    }

    private DataBindingUtil() {
    }

    private static <T extends ViewDataBinding> T c(DataBindingComponent dataBindingComponent, ViewGroup viewGroup, int i10, int i11) {
        int childCount = viewGroup.getChildCount();
        int i12 = childCount - i10;
        if (i12 == 1) {
            return (T) a(dataBindingComponent, viewGroup.getChildAt(childCount - 1), i11);
        }
        View[] viewArr = new View[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            viewArr[i13] = viewGroup.getChildAt(i13 + i10);
        }
        return (T) b(dataBindingComponent, viewArr, i11);
    }
}
