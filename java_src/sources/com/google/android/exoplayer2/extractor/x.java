package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.util.o0;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.compress.archivers.zip.UnixStat;

/* JADX INFO: loaded from: classes10.dex */
public final class x {
    private static final Pattern GAPLESS_COMMENT_PATTERN = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    private static final String GAPLESS_DESCRIPTION = "iTunSMPB";
    private static final String GAPLESS_DOMAIN = "com.apple.iTunes";
    public int encoderDelay = -1;
    public int encoderPadding = -1;

    public boolean a() {
        return (this.encoderDelay == -1 || this.encoderPadding == -1) ? false : true;
    }

    public boolean c(Metadata metadata) {
        for (int i10 = 0; i10 < metadata.h(); i10++) {
            Metadata.Entry entryG = metadata.g(i10);
            if (entryG instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) entryG;
                if (GAPLESS_DESCRIPTION.equals(commentFrame.description) && b(commentFrame.text)) {
                    return true;
                }
            } else if (entryG instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) entryG;
                if (GAPLESS_DOMAIN.equals(internalFrame.domain) && GAPLESS_DESCRIPTION.equals(internalFrame.description) && b(internalFrame.text)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean d(int i10) {
        int i11 = i10 >> 12;
        int i12 = i10 & UnixStat.PERM_MASK;
        if (i11 <= 0 && i12 <= 0) {
            return false;
        }
        this.encoderDelay = i11;
        this.encoderPadding = i12;
        return true;
    }

    private boolean b(String str) {
        Matcher matcher = GAPLESS_COMMENT_PATTERN.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int i10 = Integer.parseInt((String) o0.j(matcher.group(1)), 16);
            int i11 = Integer.parseInt((String) o0.j(matcher.group(2)), 16);
            if (i10 <= 0 && i11 <= 0) {
                return false;
            }
            this.encoderDelay = i10;
            this.encoderPadding = i11;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
