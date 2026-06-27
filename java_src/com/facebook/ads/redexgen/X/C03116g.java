package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6g, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03116g {
    private static final C6Y A01;
    private final Object A00;

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            A01 = new C03066b() { // from class: com.facebook.ads.redexgen.X.6f
                @Override // com.facebook.ads.redexgen.X.C03066b, com.facebook.ads.redexgen.X.C6Y
                public final Object A4d(final C03116g c03116g) {
                    return C03156k.A00(new InterfaceC03086d() { // from class: com.facebook.ads.redexgen.X.6e
                        @Override // com.facebook.ads.redexgen.X.InterfaceC03086d
                        public final Object A2q(int i) {
                            AccessibilityNodeInfo accessibilityNodeInfoA0M = null;
                            C6X c6xA00 = c03116g.A00(i);
                            char c = c6xA00 == null ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c) {
                                    case 2:
                                        accessibilityNodeInfoA0M = null;
                                        c = 3;
                                        break;
                                    case 3:
                                        return accessibilityNodeInfoA0M;
                                    case 4:
                                        c6xA00 = c6xA00;
                                        accessibilityNodeInfoA0M = c6xA00.A0M();
                                        c = 3;
                                        break;
                                }
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.InterfaceC03086d
                        public final List<Object> A35(String str, int i) {
                            ArrayList arrayList = null;
                            int size = 0;
                            int i2 = 0;
                            List<C6X> listA03 = c03116g.A03(str, i);
                            char c = listA03 == null ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c) {
                                    case 2:
                                        arrayList = null;
                                        c = 3;
                                        break;
                                    case 3:
                                        return arrayList;
                                    case 4:
                                        listA03 = listA03;
                                        arrayList = new ArrayList();
                                        size = listA03.size();
                                        i2 = 0;
                                        c = 5;
                                        break;
                                    case 5:
                                        if (i2 >= size) {
                                            c = 3;
                                            break;
                                        } else {
                                            c = 6;
                                            break;
                                        }
                                    case 6:
                                        listA03 = listA03;
                                        arrayList = arrayList;
                                        arrayList.add(listA03.get(i2).A0M());
                                        i2++;
                                        c = 5;
                                        break;
                                }
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.InterfaceC03086d
                        public final Object A36(int i) {
                            AccessibilityNodeInfo accessibilityNodeInfoA0M = null;
                            C6X c6xA01 = c03116g.A01(i);
                            char c = c6xA01 == null ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c) {
                                    case 2:
                                        accessibilityNodeInfoA0M = null;
                                        c = 3;
                                        break;
                                    case 3:
                                        return accessibilityNodeInfoA0M;
                                    case 4:
                                        c6xA01 = c6xA01;
                                        accessibilityNodeInfoA0M = c6xA01.A0M();
                                        c = 3;
                                        break;
                                }
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.InterfaceC03086d
                        public final boolean A6V(int i, int i2, Bundle bundle) {
                            return c03116g.A04(i, i2, bundle);
                        }
                    });
                }
            };
        } else if (Build.VERSION.SDK_INT >= 16) {
            A01 = new C03066b() { // from class: com.facebook.ads.redexgen.X.6c
                @Override // com.facebook.ads.redexgen.X.C03066b, com.facebook.ads.redexgen.X.C6Y
                public final Object A4d(final C03116g c03116g) {
                    return C03136i.A00(new C6Z() { // from class: com.facebook.ads.redexgen.X.6a
                        @Override // com.facebook.ads.redexgen.X.C6Z
                        public final Object A2q(int i) {
                            AccessibilityNodeInfo accessibilityNodeInfoA0M = null;
                            C6X c6xA00 = c03116g.A00(i);
                            char c = c6xA00 == null ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c) {
                                    case 2:
                                        accessibilityNodeInfoA0M = null;
                                        c = 3;
                                        break;
                                    case 3:
                                        return accessibilityNodeInfoA0M;
                                    case 4:
                                        c6xA00 = c6xA00;
                                        accessibilityNodeInfoA0M = c6xA00.A0M();
                                        c = 3;
                                        break;
                                }
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.C6Z
                        public final List<Object> A35(String str, int i) {
                            ArrayList arrayList = null;
                            int size = 0;
                            int i2 = 0;
                            List<C6X> listA03 = c03116g.A03(str, i);
                            char c = listA03 == null ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c) {
                                    case 2:
                                        arrayList = null;
                                        c = 3;
                                        break;
                                    case 3:
                                        return arrayList;
                                    case 4:
                                        listA03 = listA03;
                                        arrayList = new ArrayList();
                                        size = listA03.size();
                                        i2 = 0;
                                        c = 5;
                                        break;
                                    case 5:
                                        if (i2 >= size) {
                                            c = 3;
                                            break;
                                        } else {
                                            c = 6;
                                            break;
                                        }
                                    case 6:
                                        listA03 = listA03;
                                        arrayList = arrayList;
                                        arrayList.add(listA03.get(i2).A0M());
                                        i2++;
                                        c = 5;
                                        break;
                                }
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.C6Z
                        public final boolean A6V(int i, int i2, Bundle bundle) {
                            return c03116g.A04(i, i2, bundle);
                        }
                    });
                }
            };
        } else {
            A01 = new C03066b();
        }
    }

    private C03116g() {
        this.A00 = A01.A4d(this);
    }

    public C03116g(Object obj) {
        this.A00 = obj;
    }

    @Nullable
    public final C6X A00(int i) {
        return null;
    }

    @Nullable
    public final C6X A01(int i) {
        return null;
    }

    public final Object A02() {
        return this.A00;
    }

    @Nullable
    public final List<C6X> A03(String str, int i) {
        return null;
    }

    public final boolean A04(int i, int i2, Bundle bundle) {
        return false;
    }
}
