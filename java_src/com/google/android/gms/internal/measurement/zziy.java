package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zziy {
    private static final int zzann = 11;
    private static final int zzano = 12;
    private static final int zzanp = 16;
    private static final int zzanq = 26;
    public static final int[] zzaiy = new int[0];
    private static final long[] zzanr = new long[0];
    private static final float[] zzans = new float[0];
    private static final double[] zzant = new double[0];
    private static final boolean[] zzanu = new boolean[0];
    public static final String[] zzanv = new String[0];
    private static final byte[][] zzanw = new byte[0][];
    public static final byte[] zzanx = new byte[0];

    public static final int zzb(zzim zzimVar, int i) throws IOException {
        int position = zzimVar.getPosition();
        zzimVar.zzv(i);
        int i2 = 1;
        while (zzimVar.zzkj() == i) {
            zzimVar.zzv(i);
            i2++;
        }
        zzimVar.zzu(position, i);
        return i2;
    }
}
