package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class KeyFrameArray {

    public static class CustomArray {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        CustomAttribute[] values = new CustomAttribute[101];

        public int c() {
            return this.count;
        }

        public void a() {
            Arrays.fill(this.keys, 999);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public int b(int i10) {
            return this.keys[i10];
        }

        public CustomAttribute d(int i10) {
            return this.values[this.keys[i10]];
        }

        public CustomArray() {
            a();
        }
    }

    public static class CustomVar {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        CustomVariable[] values = new CustomVariable[101];

        public int c() {
            return this.count;
        }

        public void a() {
            Arrays.fill(this.keys, 999);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public int b(int i10) {
            return this.keys[i10];
        }

        public CustomVariable d(int i10) {
            return this.values[this.keys[i10]];
        }

        public CustomVar() {
            a();
        }
    }

    static class FloatArray {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        float[][] values = new float[101][];

        public void a() {
            Arrays.fill(this.keys, 999);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public FloatArray() {
            a();
        }
    }
}
