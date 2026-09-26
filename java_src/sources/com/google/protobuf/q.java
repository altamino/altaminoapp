package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
abstract class q {
    private static final q FULL_INSTANCE;
    private static final q LITE_INSTANCE;

    private static final class b extends q {
        private static final Class<?> UNMODIFIABLE_LIST_CLASS = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private b() {
            super();
        }

        @Override // com.google.protobuf.q
        <L> List<L> mutableListAt(Object obj, long j6) {
            return mutableListAt(obj, j6, 10);
        }

        private static <L> List<L> mutableListAt(Object obj, long j6, int i10) {
            Object obj2;
            List<L> listMutableCopyWithCapacity2;
            List<L> list = getList(obj, j6);
            if (list.isEmpty()) {
                if (list instanceof LazyStringList) {
                    listMutableCopyWithCapacity2 = new LazyStringArrayList(i10);
                } else {
                    listMutableCopyWithCapacity2 = ((list instanceof g0) && (list instanceof Internal.ProtobufList)) ? ((Internal.ProtobufList) list).mutableCopyWithCapacity2(i10) : new ArrayList<>(i10);
                }
                t0.putObject(obj, j6, listMutableCopyWithCapacity2);
                return listMutableCopyWithCapacity2;
            }
            if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i10);
                arrayList.addAll(list);
                t0.putObject(obj, j6, arrayList);
                obj2 = arrayList;
            } else {
                if (!(list instanceof UnmodifiableLazyStringList)) {
                    if (!(list instanceof g0) || !(list instanceof Internal.ProtobufList)) {
                        return list;
                    }
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                    if (protobufList.isModifiable()) {
                        return list;
                    }
                    Internal.ProtobufList protobufListMutableCopyWithCapacity2 = protobufList.mutableCopyWithCapacity2(list.size() + i10);
                    t0.putObject(obj, j6, protobufListMutableCopyWithCapacity2);
                    return protobufListMutableCopyWithCapacity2;
                }
                LazyStringArrayList lazyStringArrayList = new LazyStringArrayList(list.size() + i10);
                lazyStringArrayList.addAll((UnmodifiableLazyStringList) list);
                t0.putObject(obj, j6, lazyStringArrayList);
                obj2 = lazyStringArrayList;
            }
            return (List<L>) obj2;
        }

        static <E> List<E> getList(Object obj, long j6) {
            return (List) t0.getObject(obj, j6);
        }

        @Override // com.google.protobuf.q
        void makeImmutableListAt(Object obj, long j6) {
            Object objUnmodifiableList;
            List list = (List) t0.getObject(obj, j6);
            if (list instanceof LazyStringList) {
                objUnmodifiableList = ((LazyStringList) list).getUnmodifiableView();
            } else {
                if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof g0) && (list instanceof Internal.ProtobufList)) {
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                    if (protobufList.isModifiable()) {
                        protobufList.makeImmutable();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            t0.putObject(obj, j6, objUnmodifiableList);
        }

        @Override // com.google.protobuf.q
        <E> void mergeListsAt(Object obj, Object obj2, long j6) {
            List list = getList(obj2, j6);
            List listMutableListAt = mutableListAt(obj, j6, list.size());
            int size = listMutableListAt.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listMutableListAt.addAll(list);
            }
            if (size > 0) {
                list = listMutableListAt;
            }
            t0.putObject(obj, j6, list);
        }
    }

    static q full() {
        return FULL_INSTANCE;
    }

    static q lite() {
        return LITE_INSTANCE;
    }

    abstract void makeImmutableListAt(Object obj, long j6);

    abstract <L> void mergeListsAt(Object obj, Object obj2, long j6);

    abstract <L> List<L> mutableListAt(Object obj, long j6);

    private static final class c extends q {
        private c() {
            super();
        }

        static <E> Internal.ProtobufList<E> getProtobufList(Object obj, long j6) {
            return (Internal.ProtobufList) t0.getObject(obj, j6);
        }

        @Override // com.google.protobuf.q
        void makeImmutableListAt(Object obj, long j6) {
            getProtobufList(obj, j6).makeImmutable();
        }

        @Override // com.google.protobuf.q
        <E> void mergeListsAt(Object obj, Object obj2, long j6) {
            Internal.ProtobufList protobufList = getProtobufList(obj, j6);
            Internal.ProtobufList protobufList2 = getProtobufList(obj2, j6);
            int size = protobufList.size();
            int size2 = protobufList2.size();
            if (size > 0 && size2 > 0) {
                if (!protobufList.isModifiable()) {
                    protobufList = protobufList.mutableCopyWithCapacity2(size2 + size);
                }
                protobufList.addAll(protobufList2);
            }
            if (size > 0) {
                protobufList2 = protobufList;
            }
            t0.putObject(obj, j6, protobufList2);
        }

        @Override // com.google.protobuf.q
        <L> List<L> mutableListAt(Object obj, long j6) {
            int i10;
            Internal.ProtobufList protobufList = getProtobufList(obj, j6);
            if (!protobufList.isModifiable()) {
                int size = protobufList.size();
                if (size == 0) {
                    i10 = 10;
                } else {
                    i10 = size * 2;
                }
                Internal.ProtobufList protobufListMutableCopyWithCapacity2 = protobufList.mutableCopyWithCapacity2(i10);
                t0.putObject(obj, j6, protobufListMutableCopyWithCapacity2);
                return protobufListMutableCopyWithCapacity2;
            }
            return protobufList;
        }
    }

    static {
        FULL_INSTANCE = new b();
        LITE_INSTANCE = new c();
    }

    private q() {
    }
}
