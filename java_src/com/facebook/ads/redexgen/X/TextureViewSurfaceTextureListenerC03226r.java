package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.MediaController;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@TargetApi(14)
/* renamed from: com.facebook.ads.redexgen.X.6r, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class TextureViewSurfaceTextureListenerC03226r extends TextureView implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnSeekCompleteListener, TextureView.SurfaceTextureListener, InterfaceC03236s {
    private static byte[] A0N;
    private static final String A0O;
    private float A00;
    private int A01;
    private int A02;
    private int A03;
    private int A04;
    private int A05;

    @Nullable
    private MediaPlayer A06;
    private Uri A07;
    private Surface A08;
    private View A09;
    private MediaController A0A;
    private EnumC0697Lh A0B;
    private EnumC03216q A0C;
    private EnumC03216q A0D;
    private EnumC03216q A0E;
    private QI A0F;
    private boolean A0G;
    private boolean A0H;
    private boolean A0I;
    private boolean A0J;
    private boolean A0K;
    private final long A0L;
    private final MediaController.MediaPlayerControl A0M;

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0N, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 94);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A0N = new byte[]{38, 58, 55, 47, 51, 36, 56, 31, 23, 18, 27, 26, 94, 10, 17, 94, 17, 14, 27, 16, 94, 31, 13, 13, 27, 10, 13, 94, 66, 93, 80, 81, 91, 106, 66, 66, 74, 65, 72, 13, 76, 65, 90, 76, 84, 94, 13, 89, 69, 95, 66, 90, 13, 76, 67, 13, 72, 85, 78, 72, 93, 89, 68, 66, 67, 13, 90, 68, 89, 69, 13, 94, 72, 89, 107, 66, 95, 72, 74, 95, 66, 88, 67, 73, 13, 66, 67, 13, 99, 66, 88, 74, 76, 89, 13, 76, 79, 66, 91, 72, 3, 13, 94, 66, 13, 90, 72, 13, 94, 68, 65, 72, 67, 89, 65, 84, 13, 68, 74, 67, 66, 95, 72, 13, 68, 89, 3, 119, 72, 69, 68, 78, 1, 82, 85, 64, 85, 68, 1, 66, 73, 64, 79, 70, 68, 69, 1, 85, 78, 1, 52, 15, 0, 3, 13, 4, 65, 21, 14, 65, 2, 13, 14, 18, 4, 32, 2, 13, 13, 12, 23, 67, 19, 17, 6, 19, 2, 17, 6, 67, 14, 6, 7, 10, 2, 67, 19, 15, 2, 26, 6, 17, 67, 20, 10, 23, 11, 67, 48, 22, 17, 5, 2, 0, 6, 55, 6, 27, 23, 22, 17, 6, 89, 67, 25, 48, 35, 53, 38, 48, 35, 52, 113, 48, 50, 50, 52, 61, 52, 35, 48, 37, 56, 62, 63, 113, 36, 63, 48, 39, 48, 56, 61, 48, 51, 61, 52, 93, 79, 79, 89, 72, 44, 4, 4, 12, 7, 14, 75, 10, 7, 28, 10, 18, 24, 75, 31, 3, 25, 4, 28, 75, 10, 5, 75, 14, 19, 8, 14, 27, 31, 2, 4, 5, 75, 28, 2, 31, 3, 75, 24, 14, 31, 41, 10, 8, 0, 12, 25, 4, 30, 5, 15, 47, 25, 10, 28, 10, 9, 7, 14, 75, 4, 5, 75, 37, 4, 30, 12, 10, 31, 75, 10, 9, 4, 29, 14, 69, 75, 24, 4, 75, 28, 14, 75, 24, 2, 7, 14, 5, 31, 7, 18, 75, 2, 12, 5, 4, 25, 14, 75, 2, 31, 69, 35, 15, 21, 12, 4, 14, 71, 20, 64, 18, 5, 20, 18, 9, 5, 22, 5, 64, 22, 9, 4, 5, 15, 64, 9, 14, 6, 15, 18, 13, 1, 20, 9, 15, 14};
    }

    static {
        A03();
        A0O = TextureViewSurfaceTextureListenerC03226r.class.getSimpleName();
    }

    public TextureViewSurfaceTextureListenerC03226r(Context context) {
        super(context);
        this.A0C = EnumC03216q.A04;
        this.A0E = EnumC03216q.A04;
        this.A0D = EnumC03216q.A04;
        this.A0J = false;
        this.A03 = 0;
        this.A05 = 0;
        this.A04 = 0;
        this.A00 = 1.0f;
        this.A0I = false;
        this.A01 = 3;
        this.A0G = false;
        this.A0K = false;
        this.A02 = 0;
        this.A0H = false;
        this.A0B = EnumC0697Lh.A04;
        this.A0M = new MediaController.MediaPlayerControl() { // from class: com.facebook.ads.redexgen.X.7K
            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean canPause() {
                return true;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean canSeekBackward() {
                return true;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean canSeekForward() {
                return true;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getAudioSessionId() {
                C7K c7k = this;
                int audioSessionId = 0;
                char c = c7k.A00.A06 != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            c7k = c7k;
                            audioSessionId = c7k.A00.A06.getAudioSessionId();
                            c = 3;
                            break;
                        case 3:
                            return audioSessionId;
                        case 4:
                            audioSessionId = 0;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getBufferPercentage() {
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getCurrentPosition() {
                return this.A00.getCurrentPosition();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getDuration() {
                return this.A00.getDuration();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean isPlaying() {
                C7K c7k = this;
                boolean z = false;
                char c = c7k.A00.A06 != null ? (char) 2 : (char) 5;
                while (true) {
                    switch (c) {
                        case 2:
                            c7k = c7k;
                            if (!c7k.A00.A06.isPlaying()) {
                                c = 5;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            z = true;
                            c = 4;
                            break;
                        case 4:
                            return z;
                        case 5:
                            z = false;
                            c = 4;
                            break;
                    }
                }
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final void pause() throws IllegalStateException {
                this.A00.pause(true);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final void seekTo(int i) throws IllegalStateException {
                this.A00.seekTo(i);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final void start() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
                this.A00.A78(EnumC0697Lh.A05);
            }
        };
    }

    public TextureViewSurfaceTextureListenerC03226r(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A0C = EnumC03216q.A04;
        this.A0E = EnumC03216q.A04;
        this.A0D = EnumC03216q.A04;
        this.A0J = false;
        this.A03 = 0;
        this.A05 = 0;
        this.A04 = 0;
        this.A00 = 1.0f;
        this.A0I = false;
        this.A01 = 3;
        this.A0G = false;
        this.A0K = false;
        this.A02 = 0;
        this.A0H = false;
        this.A0B = EnumC0697Lh.A04;
        this.A0M = new MediaController.MediaPlayerControl() { // from class: com.facebook.ads.redexgen.X.7K
            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean canPause() {
                return true;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean canSeekBackward() {
                return true;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean canSeekForward() {
                return true;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getAudioSessionId() {
                C7K c7k = this;
                int audioSessionId = 0;
                char c = c7k.A00.A06 != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            c7k = c7k;
                            audioSessionId = c7k.A00.A06.getAudioSessionId();
                            c = 3;
                            break;
                        case 3:
                            return audioSessionId;
                        case 4:
                            audioSessionId = 0;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getBufferPercentage() {
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getCurrentPosition() {
                return this.A00.getCurrentPosition();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getDuration() {
                return this.A00.getDuration();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean isPlaying() {
                C7K c7k = this;
                boolean z = false;
                char c = c7k.A00.A06 != null ? (char) 2 : (char) 5;
                while (true) {
                    switch (c) {
                        case 2:
                            c7k = c7k;
                            if (!c7k.A00.A06.isPlaying()) {
                                c = 5;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            z = true;
                            c = 4;
                            break;
                        case 4:
                            return z;
                        case 5:
                            z = false;
                            c = 4;
                            break;
                    }
                }
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final void pause() throws IllegalStateException {
                this.A00.pause(true);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final void seekTo(int i) throws IllegalStateException {
                this.A00.seekTo(i);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final void start() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
                this.A00.A78(EnumC0697Lh.A05);
            }
        };
    }

    public TextureViewSurfaceTextureListenerC03226r(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A0C = EnumC03216q.A04;
        this.A0E = EnumC03216q.A04;
        this.A0D = EnumC03216q.A04;
        this.A0J = false;
        this.A03 = 0;
        this.A05 = 0;
        this.A04 = 0;
        this.A00 = 1.0f;
        this.A0I = false;
        this.A01 = 3;
        this.A0G = false;
        this.A0K = false;
        this.A02 = 0;
        this.A0H = false;
        this.A0B = EnumC0697Lh.A04;
        this.A0M = new MediaController.MediaPlayerControl() { // from class: com.facebook.ads.redexgen.X.7K
            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean canPause() {
                return true;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean canSeekBackward() {
                return true;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean canSeekForward() {
                return true;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getAudioSessionId() {
                C7K c7k = this;
                int audioSessionId = 0;
                char c = c7k.A00.A06 != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            c7k = c7k;
                            audioSessionId = c7k.A00.A06.getAudioSessionId();
                            c = 3;
                            break;
                        case 3:
                            return audioSessionId;
                        case 4:
                            audioSessionId = 0;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getBufferPercentage() {
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getCurrentPosition() {
                return this.A00.getCurrentPosition();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final int getDuration() {
                return this.A00.getDuration();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final boolean isPlaying() {
                C7K c7k = this;
                boolean z = false;
                char c = c7k.A00.A06 != null ? (char) 2 : (char) 5;
                while (true) {
                    switch (c) {
                        case 2:
                            c7k = c7k;
                            if (!c7k.A00.A06.isPlaying()) {
                                c = 5;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            z = true;
                            c = 4;
                            break;
                        case 4:
                            return z;
                        case 5:
                            z = false;
                            c = 4;
                            break;
                    }
                }
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final void pause() throws IllegalStateException {
                this.A00.pause(true);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final void seekTo(int i2) throws IllegalStateException {
                this.A00.seekTo(i2);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public final void start() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
                this.A00.A78(EnumC0697Lh.A05);
            }
        };
    }

    private boolean A04() {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        boolean z = false;
        char c = textureViewSurfaceTextureListenerC03226r.A0C != EnumC03216q.A08 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A07) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    private boolean A05() {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        boolean z = false;
        char c = textureViewSurfaceTextureListenerC03226r.A0C != EnumC03216q.A07 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A0A) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A05) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C != EnumC03216q.A06) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = true;
                    c = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    z = false;
                    c = 6;
                    break;
            }
        }
    }

    private boolean A06() {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        boolean z = false;
        char c = textureViewSurfaceTextureListenerC03226r.A0C != EnumC03216q.A08 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A07) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    private boolean A07() {
        boolean z = false;
        if (this.A06 == null) {
            return false;
        }
        try {
            this.A06.reset();
            z = true;
            return true;
        } catch (IllegalStateException e) {
            P7.A07(getContext(), A02(0, 6, 8), P8.A1Y, new PA(e));
            return z;
        }
    }

    private boolean A08(@Nullable Surface surface) {
        boolean z = false;
        if (this.A06 == null) {
            return false;
        }
        try {
            this.A06.setSurface(surface);
            z = true;
            return true;
        } catch (IllegalStateException e) {
            P7.A07(getContext(), A02(0, 6, 8), P8.A1Z, new PA(e));
            return z;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public final void A3p() throws IllegalStateException {
        if (!this.A0G) {
            pause(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    @SuppressLint({"NewApi"})
    public final boolean A3r() throws IllegalStateException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        int length = 0;
        int i = 0;
        MediaPlayer.TrackInfo[] trackInfo = null;
        boolean z = true;
        int i2 = 0;
        char c = textureViewSurfaceTextureListenerC03226r.A06 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT >= 16) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i2 = 0;
                    z = false;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    trackInfo = textureViewSurfaceTextureListenerC03226r.A06.getTrackInfo();
                    length = trackInfo.length;
                    i = i2;
                    c = '\t';
                    break;
                case '\t':
                    if (i >= length) {
                        c = 14;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    try {
                        trackInfo = trackInfo;
                        MediaPlayer.TrackInfo trackInfo2 = trackInfo[i];
                        if (trackInfo2.getTrackType() == 2) {
                            c = 4;
                            break;
                        } else {
                            c = '\r';
                            break;
                        }
                    } catch (RuntimeException e) {
                        Log.e(A0O, A02(354, 35, 62), e);
                        c = 4;
                        break;
                    }
                case '\r':
                    i++;
                    c = '\t';
                    break;
                case 14:
                    i2 = 0;
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public final void A77() throws IllegalStateException {
        setVideoState(EnumC03216q.A09);
        stop();
        this.A03 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public final void A78(EnumC0697Lh enumC0697Lh) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        textureViewSurfaceTextureListenerC03226r.A0E = EnumC03216q.A0A;
        textureViewSurfaceTextureListenerC03226r.A0B = enumC0697Lh;
        char c = textureViewSurfaceTextureListenerC03226r.A0C != EnumC03216q.A0A ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A07) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A04) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A05) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C != EnumC03216q.A06) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A06 != null) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setup(textureViewSurfaceTextureListenerC03226r.A07);
                    c = '\b';
                    break;
                case '\b':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.isAvailable()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.onSurfaceTextureAvailable(textureViewSurfaceTextureListenerC03226r.getSurfaceTexture(), 0, 0);
                    c = '\n';
                    break;
                case '\n':
                    return;
                case 11:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A03 <= 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A06.seekTo(textureViewSurfaceTextureListenerC03226r.A03);
                    c = '\r';
                    break;
                case '\r':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A06.start();
                    if (textureViewSurfaceTextureListenerC03226r.A0C != EnumC03216q.A07) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A0K) {
                        c = '\b';
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A0A);
                    c = '\b';
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public final void destroy() {
        if (this.A06 != null) {
            A08(null);
            this.A06.setOnBufferingUpdateListener(null);
            this.A06.setOnCompletionListener(null);
            this.A06.setOnErrorListener(null);
            this.A06.setOnInfoListener(null);
            this.A06.setOnPreparedListener(null);
            this.A06.setOnVideoSizeChangedListener(null);
            this.A06.setOnSeekCompleteListener(null);
            A07();
            this.A06 = null;
            setVideoState(EnumC03216q.A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public int getCurrentPosition() {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        int currentPosition = 0;
        char c = textureViewSurfaceTextureListenerC03226r.A06 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A05()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    currentPosition = textureViewSurfaceTextureListenerC03226r.A06.getCurrentPosition();
                    c = 4;
                    break;
                case 4:
                    return currentPosition;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public int getDuration() {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        int duration = 0;
        char c = textureViewSurfaceTextureListenerC03226r.A06 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A05()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    duration = 0;
                    c = 4;
                    break;
                case 4:
                    return duration;
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    duration = textureViewSurfaceTextureListenerC03226r.A06.getDuration();
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public long getInitialBufferTime() {
        return this.A0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public EnumC0697Lh getStartReason() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public EnumC03216q getState() {
        return this.A0C;
    }

    public EnumC03216q getTargetState() {
        return this.A0E;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public int getVideoHeight() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public int getVideoWidth() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public float getVolume() {
        return this.A00;
    }

    @Override // android.view.TextureView, android.view.View
    public final void onAttachedToWindow() throws IllegalStateException {
        super.onAttachedToWindow();
        if (!isHardwareAccelerated()) {
            setVideoState(EnumC03216q.A03);
            stop();
            P7.A07(getContext(), A02(28, 5, 106), P8.A1i, new PA(A02(214, 33, 15)));
        }
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) throws IllegalStateException {
        if (this.A06 != null) {
            this.A06.pause();
        }
        setVideoState(EnumC03216q.A06);
        seekTo(0);
        this.A03 = 0;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        char c = textureViewSurfaceTextureListenerC03226r.A01 > 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.getState() != EnumC03216q.A0A) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A01--;
                    textureViewSurfaceTextureListenerC03226r.stop();
                    textureViewSurfaceTextureListenerC03226r.A78(textureViewSurfaceTextureListenerC03226r.A0B);
                    c = 4;
                    break;
                case 4:
                    return true;
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A03);
                    textureViewSurfaceTextureListenerC03226r.stop();
                    c = 4;
                    break;
            }
        }
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        char c;
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        boolean z = true;
        switch (i) {
            case 3:
                c = 4;
                break;
            case 701:
                c = '\b';
                break;
            case 702:
                c = 6;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    z = false;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A0K = z;
                    if (textureViewSurfaceTextureListenerC03226r.A0E != EnumC03216q.A0A) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A0A);
                    c = 3;
                    break;
                case 6:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A06()) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A0A);
                    c = 2;
                    break;
                case '\b':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A02);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        View view = null;
        MediaController mediaController = null;
        int i = 0;
        textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A07);
        char c = textureViewSurfaceTextureListenerC03226r.A0I ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A0H) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A0A = new MediaController(textureViewSurfaceTextureListenerC03226r.getContext());
                    mediaController = textureViewSurfaceTextureListenerC03226r.A0A;
                    if (textureViewSurfaceTextureListenerC03226r.A09 != null) {
                        c = '\r';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    view = textureViewSurfaceTextureListenerC03226r;
                    c = 5;
                    break;
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    mediaController = mediaController;
                    view = view;
                    mediaController.setAnchorView(view);
                    textureViewSurfaceTextureListenerC03226r.A0A.setMediaPlayer(textureViewSurfaceTextureListenerC03226r.A0M);
                    textureViewSurfaceTextureListenerC03226r.A0A.setEnabled(true);
                    c = 6;
                    break;
                case 6:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    mediaPlayer = mediaPlayer;
                    textureViewSurfaceTextureListenerC03226r.setRequestedVolume(textureViewSurfaceTextureListenerC03226r.A00);
                    textureViewSurfaceTextureListenerC03226r.A05 = mediaPlayer.getVideoWidth();
                    textureViewSurfaceTextureListenerC03226r.A04 = mediaPlayer.getVideoHeight();
                    if (textureViewSurfaceTextureListenerC03226r.A03 <= 0) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A03 < textureViewSurfaceTextureListenerC03226r.A06.getDuration()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    i = 0;
                    textureViewSurfaceTextureListenerC03226r.A03 = 0;
                    c = '\t';
                    break;
                case '\t':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A06.seekTo(textureViewSurfaceTextureListenerC03226r.A03);
                    textureViewSurfaceTextureListenerC03226r.A03 = i;
                    c = '\n';
                    break;
                case '\n':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0E != EnumC03216q.A0A) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A78(textureViewSurfaceTextureListenerC03226r.A0B);
                    c = '\f';
                    break;
                case '\f':
                    return;
                case '\r':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    view = textureViewSurfaceTextureListenerC03226r.A09;
                    c = 5;
                    break;
            }
        }
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public final void onSeekComplete(MediaPlayer mediaPlayer) {
        if (this.A0F == null) {
            return;
        }
        this.A0F.A6F(this.A02, this.A03);
        this.A03 = 0;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) throws IllegalStateException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        char c = textureViewSurfaceTextureListenerC03226r.A08 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    surfaceTexture = surfaceTexture;
                    textureViewSurfaceTextureListenerC03226r.A08 = new Surface(surfaceTexture);
                    c = 3;
                    break;
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A08(textureViewSurfaceTextureListenerC03226r.A08)) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A03);
                    textureViewSurfaceTextureListenerC03226r.destroy();
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A0J = false;
                    if (textureViewSurfaceTextureListenerC03226r.A0C != EnumC03216q.A05) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0D == EnumC03216q.A05) {
                        c = 5;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A78(textureViewSurfaceTextureListenerC03226r.A0B);
                    c = 5;
                    break;
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) throws IllegalStateException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        EnumC03216q enumC03216q = null;
        textureViewSurfaceTextureListenerC03226r.A08(null);
        char c = textureViewSurfaceTextureListenerC03226r.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A08.release();
                    textureViewSurfaceTextureListenerC03226r.A08 = null;
                    c = 3;
                    break;
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A0J) {
                        c = 4;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A0I) {
                        c = '\n';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    enumC03216q = EnumC03216q.A0A;
                    c = 6;
                    break;
                case 6:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    enumC03216q = enumC03216q;
                    textureViewSurfaceTextureListenerC03226r.A0D = enumC03216q;
                    textureViewSurfaceTextureListenerC03226r.A0J = true;
                    c = 7;
                    break;
                case 7:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A05) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.pause(false);
                    c = '\t';
                    break;
                case '\t':
                    return true;
                case '\n':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    enumC03216q = textureViewSurfaceTextureListenerC03226r.A0C;
                    c = 6;
                    break;
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        textureViewSurfaceTextureListenerC03226r.A05 = mediaPlayer.getVideoWidth();
        textureViewSurfaceTextureListenerC03226r.A04 = mediaPlayer.getVideoHeight();
        char c = textureViewSurfaceTextureListenerC03226r.A05 != 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A04 == 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.requestLayout();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        EnumC03216q enumC03216q = null;
        super.onWindowFocusChanged(z);
        char c = textureViewSurfaceTextureListenerC03226r.A06 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0A == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A0A.isShowing()) {
                        c = 5;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 5:
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case 6:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A0J) {
                        c = 7;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case 7:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A0I) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    enumC03216q = EnumC03216q.A0A;
                    c = '\t';
                    break;
                case '\t':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    enumC03216q = enumC03216q;
                    textureViewSurfaceTextureListenerC03226r.A0D = enumC03216q;
                    textureViewSurfaceTextureListenerC03226r.A0J = true;
                    c = '\n';
                    break;
                case '\n':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A05) {
                        c = 2;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A3p();
                    c = 2;
                    break;
                case '\f':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    enumC03216q = textureViewSurfaceTextureListenerC03226r.A0C;
                    c = '\t';
                    break;
                case '\r':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A0J = false;
                    if (textureViewSurfaceTextureListenerC03226r.A0C != EnumC03216q.A05) {
                        c = 2;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0D == EnumC03216q.A05) {
                        c = 2;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A78(textureViewSurfaceTextureListenerC03226r.A0B);
                    c = 2;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public final void pause(boolean z) throws IllegalStateException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        textureViewSurfaceTextureListenerC03226r.A0E = EnumC03216q.A05;
        char c = textureViewSurfaceTextureListenerC03226r.A06 != null ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A04()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A0D = EnumC03216q.A05;
                    textureViewSurfaceTextureListenerC03226r.A0J = true;
                    c = 6;
                    break;
                case 6:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A06.pause();
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A06) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A05);
                    c = 3;
                    break;
                case '\b':
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A04);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public final void seekTo(int i) throws IllegalStateException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        char c = textureViewSurfaceTextureListenerC03226r.A06 != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A05()) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (i >= textureViewSurfaceTextureListenerC03226r.getDuration()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (i <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A02 = textureViewSurfaceTextureListenerC03226r.getCurrentPosition();
                    textureViewSurfaceTextureListenerC03226r.A03 = i;
                    textureViewSurfaceTextureListenerC03226r.A06.seekTo(i);
                    c = 6;
                    break;
                case 6:
                    return;
                case 7:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A03 = i;
                    c = 6;
                    break;
            }
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        char c = Build.VERSION.SDK_INT < 24 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    drawable = drawable;
                    super.setBackgroundDrawable(drawable);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (!AdInternalSettings.isDebugBuild()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    Log.w(A0O, A02(252, 102, 53));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public void setBackgroundPlaybackEnabled(boolean z) {
        this.A0G = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public void setControlsAnchorView(View view) {
        this.A09 = view;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.redexgen.X.6t
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                ViewOnTouchListenerC03246t viewOnTouchListenerC03246t = this;
                char c = viewOnTouchListenerC03246t.A00.A0H ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            return true;
                        case 3:
                            viewOnTouchListenerC03246t = viewOnTouchListenerC03246t;
                            if (viewOnTouchListenerC03246t.A00.A0A == null) {
                                c = 2;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            motionEvent = motionEvent;
                            if (motionEvent.getAction() != 1) {
                                c = 2;
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 5:
                            viewOnTouchListenerC03246t = viewOnTouchListenerC03246t;
                            if (!viewOnTouchListenerC03246t.A00.A0A.isShowing()) {
                                c = 7;
                                break;
                            } else {
                                c = 6;
                                break;
                            }
                        case 6:
                            viewOnTouchListenerC03246t = viewOnTouchListenerC03246t;
                            viewOnTouchListenerC03246t.A00.A0A.hide();
                            c = 2;
                            break;
                        case 7:
                            viewOnTouchListenerC03246t = viewOnTouchListenerC03246t;
                            viewOnTouchListenerC03246t.A00.A0A.show();
                            c = 2;
                            break;
                    }
                }
            }
        });
    }

    @Override // android.view.TextureView, android.view.View
    public void setForeground(Drawable drawable) {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        char c = Build.VERSION.SDK_INT < 24 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    drawable = drawable;
                    super.setForeground(drawable);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (!AdInternalSettings.isDebugBuild()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    Log.w(A0O, A02(33, 94, 115));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public void setFullScreen(boolean z) {
        final TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        textureViewSurfaceTextureListenerC03226r.A0I = z;
        char c = textureViewSurfaceTextureListenerC03226r.A0I ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (!textureViewSurfaceTextureListenerC03226r.A0H) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.redexgen.X.7J
                        @Override // android.view.View.OnTouchListener
                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                            C7J c7j = this;
                            char c2 = c7j.A00.A0H ? (char) 2 : (char) 3;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        return true;
                                    case 3:
                                        c7j = c7j;
                                        if (c7j.A00.A0A == null) {
                                            c2 = 2;
                                            break;
                                        } else {
                                            c2 = 4;
                                            break;
                                        }
                                    case 4:
                                        motionEvent = motionEvent;
                                        if (motionEvent.getAction() != 1) {
                                            c2 = 2;
                                            break;
                                        } else {
                                            c2 = 5;
                                            break;
                                        }
                                    case 5:
                                        c7j = c7j;
                                        if (!c7j.A00.A0A.isShowing()) {
                                            c2 = 7;
                                            break;
                                        } else {
                                            c2 = 6;
                                            break;
                                        }
                                    case 6:
                                        c7j = c7j;
                                        c7j.A00.A0A.hide();
                                        c2 = 2;
                                        break;
                                    case 7:
                                        c7j = c7j;
                                        c7j.A00.A0A.show();
                                        c2 = 2;
                                        break;
                                }
                            }
                        }
                    });
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public void setRequestedVolume(float f) {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        textureViewSurfaceTextureListenerC03226r.A00 = f;
        char c = textureViewSurfaceTextureListenerC03226r.A06 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A08) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    if (textureViewSurfaceTextureListenerC03226r.A0C == EnumC03216q.A04) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A06.setVolume(f, f);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public void setVideoMPD(@Nullable String str) {
    }

    private void setVideoState(EnumC03216q enumC03216q) {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        char c = enumC03216q != textureViewSurfaceTextureListenerC03226r.A0C ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    if (!BuildConfigApi.isDebug()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    enumC03216q = enumC03216q;
                    String str = A02(127, 23, 127) + enumC03216q;
                    c = 4;
                    break;
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    enumC03216q = enumC03216q;
                    textureViewSurfaceTextureListenerC03226r.A0C = enumC03216q;
                    if (textureViewSurfaceTextureListenerC03226r.A0F == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    enumC03216q = enumC03216q;
                    textureViewSurfaceTextureListenerC03226r.A0F.A6M(enumC03216q);
                    c = 6;
                    break;
                case 6:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public void setVideoStateChangeListener(QI qi) {
        this.A0F = qi;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public void setup(Uri uri) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        MediaPlayer mediaPlayer;
        this.A0K = false;
        this.A07 = uri;
        if (this.A06 != null) {
            A07();
            A08(null);
            mediaPlayer = this.A06;
            setVideoState(EnumC03216q.A04);
        } else {
            mediaPlayer = new MediaPlayer();
        }
        try {
            if (uri.getScheme().equals(A02(247, 5, 98))) {
                AssetFileDescriptor assetFileDescriptorOpenFd = null;
                try {
                    try {
                        assetFileDescriptorOpenFd = getContext().getAssets().openFd(uri.getPath().substring(1));
                        mediaPlayer.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
                    } finally {
                        if (assetFileDescriptorOpenFd != null) {
                            try {
                                assetFileDescriptorOpenFd.close();
                            } catch (IOException e) {
                                Log.w(A0O, A02(150, 15, 63) + e);
                            }
                        }
                    }
                } catch (IOException | SecurityException e2) {
                    Log.w(A0O, A02(6, 22, 32) + e2);
                    setVideoState(EnumC03216q.A03);
                    if (assetFileDescriptorOpenFd != null) {
                        try {
                            assetFileDescriptorOpenFd.close();
                        } catch (IOException e3) {
                            Log.w(A0O, A02(150, 15, 63) + e3);
                        }
                    }
                }
            } else {
                mediaPlayer.setDataSource(uri.toString());
            }
            mediaPlayer.setLooping(false);
            mediaPlayer.setOnBufferingUpdateListener(this);
            mediaPlayer.setOnCompletionListener(this);
            mediaPlayer.setOnErrorListener(this);
            mediaPlayer.setOnInfoListener(this);
            mediaPlayer.setOnPreparedListener(this);
            mediaPlayer.setOnVideoSizeChangedListener(this);
            mediaPlayer.setOnSeekCompleteListener(this);
            mediaPlayer.prepareAsync();
            this.A06 = mediaPlayer;
            setVideoState(EnumC03216q.A08);
        } catch (Exception e4) {
            setVideoState(EnumC03216q.A03);
            mediaPlayer.release();
            Log.e(A0O, A02(165, 49, 61) + e4);
        }
        setSurfaceTextureListener(this);
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03236s
    public final void stop() throws IllegalStateException {
        TextureViewSurfaceTextureListenerC03226r textureViewSurfaceTextureListenerC03226r = this;
        int currentPosition = 0;
        textureViewSurfaceTextureListenerC03226r.A0E = EnumC03216q.A04;
        char c = textureViewSurfaceTextureListenerC03226r.A06 != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    currentPosition = textureViewSurfaceTextureListenerC03226r.A06.getCurrentPosition();
                    if (currentPosition <= 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A03 = currentPosition;
                    c = 4;
                    break;
                case 4:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A06.stop();
                    textureViewSurfaceTextureListenerC03226r.A07();
                    textureViewSurfaceTextureListenerC03226r.A06.release();
                    textureViewSurfaceTextureListenerC03226r.A06 = null;
                    if (textureViewSurfaceTextureListenerC03226r.A0A == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    textureViewSurfaceTextureListenerC03226r = textureViewSurfaceTextureListenerC03226r;
                    textureViewSurfaceTextureListenerC03226r.A0A.hide();
                    textureViewSurfaceTextureListenerC03226r.A0A.setEnabled(false);
                    c = 6;
                    break;
                case 6:
                    textureViewSurfaceTextureListenerC03226r.setVideoState(EnumC03216q.A04);
                    return;
            }
        }
    }
}
