package androidx.datastore.preferences.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
abstract class ListFieldSchema {
    private static final ListFieldSchema FULL_INSTANCE;
    private static final ListFieldSchema LITE_INSTANCE;

    private static final class ListFieldSchemaFull extends ListFieldSchema {
        private static final Class<?> UNMODIFIABLE_LIST_CLASS = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private ListFieldSchemaFull() {
            super();
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        <L> List<L> e(Object obj, long j6) {
            return g(obj, j6, 10);
        }

        static <E> List<E> f(Object obj, long j6) {
            return (List) UnsafeUtil.F(obj, j6);
        }

        private static <L> List<L> g(Object obj, long j6, int i10) {
            Object obj2;
            List<L> arrayList;
            List<L> listF = f(obj, j6);
            if (listF.isEmpty()) {
                if (listF instanceof LazyStringList) {
                    arrayList = new LazyStringArrayList(i10);
                } else if ((listF instanceof PrimitiveNonBoxingCollection) && (listF instanceof Internal.ProtobufList)) {
                    arrayList = ((Internal.ProtobufList) listF).mutableCopyWithCapacity(i10);
                } else {
                    arrayList = new ArrayList<>(i10);
                }
                UnsafeUtil.V(obj, j6, arrayList);
                return arrayList;
            }
            if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(listF.getClass())) {
                ArrayList arrayList2 = new ArrayList(listF.size() + i10);
                arrayList2.addAll(listF);
                UnsafeUtil.V(obj, j6, arrayList2);
                obj2 = arrayList2;
            } else if (listF instanceof UnmodifiableLazyStringList) {
                LazyStringArrayList lazyStringArrayList = new LazyStringArrayList(listF.size() + i10);
                lazyStringArrayList.addAll((UnmodifiableLazyStringList) listF);
                UnsafeUtil.V(obj, j6, lazyStringArrayList);
                obj2 = lazyStringArrayList;
            } else {
                if ((listF instanceof PrimitiveNonBoxingCollection) && (listF instanceof Internal.ProtobufList)) {
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) listF;
                    if (!protobufList.isModifiable()) {
                        Internal.ProtobufList protobufListMutableCopyWithCapacity = protobufList.mutableCopyWithCapacity(listF.size() + i10);
                        UnsafeUtil.V(obj, j6, protobufListMutableCopyWithCapacity);
                        return protobufListMutableCopyWithCapacity;
                    }
                    return listF;
                }
                return listF;
            }
            return (List<L>) obj2;
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        void c(Object obj, long j6) {
            Object objUnmodifiableList;
            List list = (List) UnsafeUtil.F(obj, j6);
            if (list instanceof LazyStringList) {
                objUnmodifiableList = ((LazyStringList) list).getUnmodifiableView();
            } else {
                if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof PrimitiveNonBoxingCollection) && (list instanceof Internal.ProtobufList)) {
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                    if (protobufList.isModifiable()) {
                        protobufList.makeImmutable();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            UnsafeUtil.V(obj, j6, objUnmodifiableList);
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        <E> void d(Object obj, Object obj2, long j6) {
            List listF = f(obj2, j6);
            List listG = g(obj, j6, listF.size());
            int size = listG.size();
            int size2 = listF.size();
            if (size > 0 && size2 > 0) {
                listG.addAll(listF);
            }
            if (size > 0) {
                listF = listG;
            }
            UnsafeUtil.V(obj, j6, listF);
        }
    }

    static ListFieldSchema a() {
        return FULL_INSTANCE;
    }

    static ListFieldSchema b() {
        return LITE_INSTANCE;
    }

    abstract void c(Object obj, long j6);

    abstract <L> void d(Object obj, Object obj2, long j6);

    abstract <L> List<L> e(Object obj, long j6);

    private static final class ListFieldSchemaLite extends ListFieldSchema {
        private ListFieldSchemaLite() {
            super();
        }

        static <E> Internal.ProtobufList<E> f(Object obj, long j6) {
            return (Internal.ProtobufList) UnsafeUtil.F(obj, j6);
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        void c(Object obj, long j6) {
            f(obj, j6).makeImmutable();
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        <E> void d(Object obj, Object obj2, long j6) {
            Internal.ProtobufList protobufListF = f(obj, j6);
            Internal.ProtobufList protobufListF2 = f(obj2, j6);
            int size = protobufListF.size();
            int size2 = protobufListF2.size();
            if (size > 0 && size2 > 0) {
                if (!protobufListF.isModifiable()) {
                    protobufListF = protobufListF.mutableCopyWithCapacity(size2 + size);
                }
                protobufListF.addAll(protobufListF2);
            }
            if (size > 0) {
                protobufListF2 = protobufListF;
            }
            UnsafeUtil.V(obj, j6, protobufListF2);
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        <L> List<L> e(Object obj, long j6) {
            int i10;
            Internal.ProtobufList protobufListF = f(obj, j6);
            if (!protobufListF.isModifiable()) {
                int size = protobufListF.size();
                if (size == 0) {
                    i10 = 10;
                } else {
                    i10 = size * 2;
                }
                Internal.ProtobufList protobufListMutableCopyWithCapacity = protobufListF.mutableCopyWithCapacity(i10);
                UnsafeUtil.V(obj, j6, protobufListMutableCopyWithCapacity);
                return protobufListMutableCopyWithCapacity;
            }
            return protobufListF;
        }
    }

    static {
        FULL_INSTANCE = new ListFieldSchemaFull();
        LITE_INSTANCE = new ListFieldSchemaLite();
    }

    private ListFieldSchema() {
    }
}
