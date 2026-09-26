package androidx.databinding;

import android.util.Log;
import android.view.View;
import androidx.annotation.RestrictTo;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
public class MergedDataBinderMapper extends DataBinderMapper {
    private static final String TAG = "MergedDataBinderMapper";
    private Set<Class<? extends DataBinderMapper>> mExistingMappers = new HashSet();
    private List<DataBinderMapper> mMappers = new CopyOnWriteArrayList();
    private List<String> mFeatureBindingMappers = new CopyOnWriteArrayList();

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i10) {
        Iterator<DataBinderMapper> it = this.mMappers.iterator();
        while (it.hasNext()) {
            ViewDataBinding dataBinder = it.next().getDataBinder(dataBindingComponent, view, i10);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        if (b()) {
            return getDataBinder(dataBindingComponent, view, i10);
        }
        return null;
    }

    private boolean b() {
        boolean z6 = false;
        for (String str : this.mFeatureBindingMappers) {
            try {
                Class<?> cls = Class.forName(str);
                if (DataBinderMapper.class.isAssignableFrom(cls)) {
                    a((DataBinderMapper) cls.newInstance());
                    this.mFeatureBindingMappers.remove(str);
                    z6 = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException e) {
                Log.e(TAG, "unable to add feature mapper for " + str, e);
            } catch (InstantiationException e2) {
                Log.e(TAG, "unable to add feature mapper for " + str, e2);
            }
        }
        return z6;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i10) {
        Iterator<DataBinderMapper> it = this.mMappers.iterator();
        while (it.hasNext()) {
            String strConvertBrIdToString = it.next().convertBrIdToString(i10);
            if (strConvertBrIdToString != null) {
                return strConvertBrIdToString;
            }
        }
        if (b()) {
            return convertBrIdToString(i10);
        }
        return null;
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Iterator<DataBinderMapper> it = this.mMappers.iterator();
        while (it.hasNext()) {
            int layoutId = it.next().getLayoutId(str);
            if (layoutId != 0) {
                return layoutId;
            }
        }
        if (b()) {
            return getLayoutId(str);
        }
        return 0;
    }

    public void a(DataBinderMapper dataBinderMapper) {
        if (this.mExistingMappers.add((Class<? extends DataBinderMapper>) dataBinderMapper.getClass())) {
            this.mMappers.add(dataBinderMapper);
            Iterator<DataBinderMapper> it = dataBinderMapper.collectDependencies().iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i10) {
        Iterator<DataBinderMapper> it = this.mMappers.iterator();
        while (it.hasNext()) {
            ViewDataBinding dataBinder = it.next().getDataBinder(dataBindingComponent, viewArr, i10);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        if (b()) {
            return getDataBinder(dataBindingComponent, viewArr, i10);
        }
        return null;
    }
}
