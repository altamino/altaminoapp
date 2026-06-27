package com.narvii.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.util.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class TouchTrackUtils {
    public static View findTouchTargetView(Window window) throws IllegalAccessException, IllegalArgumentException {
        View viewFindTouchTarget;
        if (window == null) {
            return null;
        }
        View decorView = window.getDecorView();
        while (true) {
            ViewGroup viewGroup = (ViewGroup) decorView;
            viewFindTouchTarget = findTouchTarget(viewGroup);
            if (viewFindTouchTarget != null) {
                if (viewFindTouchTarget == viewGroup || !(viewFindTouchTarget instanceof ViewGroup)) {
                    break;
                }
                decorView = viewFindTouchTarget;
            } else {
                return null;
            }
        }
        return viewFindTouchTarget;
    }

    private static View findTouchTarget(ViewGroup viewGroup) throws IllegalAccessException, IllegalArgumentException {
        Field declaredField;
        try {
            Field declaredField2 = getDeclaredField(viewGroup, "mFirstTouchTarget");
            if (declaredField2 == null) {
                return viewGroup;
            }
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(viewGroup);
            if (obj == null || (declaredField = obj.getClass().getDeclaredField("child")) == null) {
                return viewGroup;
            }
            declaredField.setAccessible(true);
            View view = (View) declaredField.get(obj);
            return view == null ? viewGroup : view;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Field getDeclaredField(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (Class<?> superclass = obj.getClass(); superclass != Object.class; superclass = superclass.getSuperclass()) {
            try {
                return superclass.getDeclaredField(str);
            } catch (NoSuchFieldException unused) {
            } catch (NullPointerException e) {
                e.printStackTrace();
                return null;
            } catch (SecurityException e2) {
                e2.printStackTrace();
                return null;
            } catch (Exception e3) {
                e3.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static String getViewInfo(View view) {
        if (view == null) {
            return null;
        }
        List<Class> criticalClassList = getCriticalClassList(view);
        StringBuilder sb = new StringBuilder(view.toString());
        if (criticalClassList != null) {
            for (Class cls : criticalClassList) {
                if (!TextUtils.isEmpty(getClassInfo(cls))) {
                    sb.append("\n");
                    sb.append(getClassInfo(cls));
                }
            }
        }
        return sb.toString();
    }

    public static String getClassInfo(Class cls) {
        if (cls == null) {
            return null;
        }
        String simpleName = cls.getSimpleName();
        if (TextUtils.isEmpty(simpleName)) {
            return null;
        }
        if (cls.isMemberClass()) {
            StringBuilder sb = new StringBuilder();
            sb.append(".(");
            sb.append(cls.getName());
            sb.append(".");
            sb.append(Utils.isKotlinClass(cls) ? "kt" : "java)");
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(".(");
        sb2.append(simpleName);
        sb2.append(".");
        sb2.append(Utils.isKotlinClass(cls) ? "kt" : "java");
        sb2.append(":1)");
        return sb2.toString();
    }

    private static boolean isClassCritical(Class cls) {
        return (cls == null || cls.getName().startsWith("com.android.") || cls.getName().startsWith("android.") || cls.getSimpleName().startsWith("NV") || cls.getSimpleName().equals("FlexLayout")) ? false : true;
    }

    public static List<Class> getCriticalClassList(View view) {
        if (view == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        View view2 = view;
        while (view2 != null) {
            if (isClassCritical(view2.getClass())) {
                arrayList.add(view2.getClass());
            }
            Object tag = view2.getTag(R.id._shown_in_adapter);
            if (tag != null && isClassCritical(tag.getClass())) {
                arrayList.add(tag.getClass());
            }
            Object tag2 = view2.getTag(R.id._shown_in_fragment);
            if (tag2 instanceof NVFragment) {
                arrayList.add(tag2.getClass());
                return arrayList;
            }
            view2 = view2.getParent() instanceof View ? (View) view2.getParent() : null;
        }
        if (view.getContext() instanceof Activity) {
            arrayList.add(view.getContext().getClass());
        }
        return arrayList;
    }
}
