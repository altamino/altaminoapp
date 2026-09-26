package com.airbnb.lottie;

import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class i {
    private boolean enabled = false;
    private final Set<b> frameListeners = new ArraySet();
    private Map<String, com.airbnb.lottie.utils.d> layerRenderTimes = new HashMap();
    private final Comparator<Pair<String, Float>> floatComparator = new a();

    class a implements Comparator<Pair<String, Float>> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float fFloatValue = pair.second.floatValue();
            float fFloatValue2 = pair2.second.floatValue();
            if (fFloatValue2 > fFloatValue) {
                return 1;
            }
            return fFloatValue > fFloatValue2 ? -1 : 0;
        }
    }

    public interface b {
        void a(float f);
    }

    void b(boolean z6) {
        this.enabled = z6;
    }

    public void a(String str, float f) {
        if (this.enabled) {
            com.airbnb.lottie.utils.d dVar = this.layerRenderTimes.get(str);
            if (dVar == null) {
                dVar = new com.airbnb.lottie.utils.d();
                this.layerRenderTimes.put(str, dVar);
            }
            dVar.a(f);
            if (str.equals("root")) {
                Iterator<b> it = this.frameListeners.iterator();
                while (it.hasNext()) {
                    it.next().a(f);
                }
            }
        }
    }
}
