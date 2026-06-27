package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.TypeCastException;

/* compiled from: CollectionToArray.kt */
/* loaded from: classes4.dex */
public final class CollectionToArray {
    private static final Object[] EMPTY = new Object[0];
    private static final int MAX_SIZE = 2147483645;

    public static final Object[] toArray(Collection<?> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "collection");
        int size = collection.size();
        if (size != 0) {
            Iterator<?> it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArrCopyOf = new Object[size];
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    objArrCopyOf[i] = it.next();
                    if (i2 >= objArrCopyOf.length) {
                        if (!it.hasNext()) {
                            return objArrCopyOf;
                        }
                        int i3 = ((i2 * 3) + 1) >>> 1;
                        if (i3 <= i2) {
                            if (i2 >= MAX_SIZE) {
                                throw new OutOfMemoryError();
                            }
                            i3 = MAX_SIZE;
                        }
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                        Intrinsics.checkExpressionValueIsNotNull(objArrCopyOf, "Arrays.copyOf(result, newSize)");
                    } else if (!it.hasNext()) {
                        Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, i2);
                        Intrinsics.checkExpressionValueIsNotNull(objArrCopyOf2, "Arrays.copyOf(result, size)");
                        return objArrCopyOf2;
                    }
                    i = i2;
                }
            }
        }
        return EMPTY;
    }

    public static final Object[] toArray(Collection<?> collection, Object[] objArr) throws NegativeArraySizeException {
        Object[] objArrCopyOf;
        Intrinsics.checkParameterIsNotNull(collection, "collection");
        if (objArr == null) {
            throw new NullPointerException();
        }
        int size = collection.size();
        int i = 0;
        if (size == 0) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        if (size <= objArr.length) {
            objArrCopyOf = objArr;
        } else {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
            if (objNewInstance == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            }
            objArrCopyOf = (Object[]) objNewInstance;
        }
        while (true) {
            int i2 = i + 1;
            objArrCopyOf[i] = it.next();
            if (i2 >= objArrCopyOf.length) {
                if (!it.hasNext()) {
                    return objArrCopyOf;
                }
                int i3 = ((i2 * 3) + 1) >>> 1;
                if (i3 <= i2) {
                    if (i2 >= MAX_SIZE) {
                        throw new OutOfMemoryError();
                    }
                    i3 = MAX_SIZE;
                }
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                Intrinsics.checkExpressionValueIsNotNull(objArrCopyOf, "Arrays.copyOf(result, newSize)");
            } else if (!it.hasNext()) {
                if (objArrCopyOf == objArr) {
                    objArr[i2] = null;
                    return objArr;
                }
                Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, i2);
                Intrinsics.checkExpressionValueIsNotNull(objArrCopyOf2, "Arrays.copyOf(result, size)");
                return objArrCopyOf2;
            }
            i = i2;
        }
    }
}
