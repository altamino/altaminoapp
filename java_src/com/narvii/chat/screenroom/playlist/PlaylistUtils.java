package com.narvii.chat.screenroom.playlist;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.content.ContextCompat;
import com.narvii.amino.mastes.R;
import com.narvii.model.Media;
import com.narvii.model.PlayListItem;
import com.narvii.widget.NVImageView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes2.dex */
public class PlaylistUtils {
    private static final Uri sArtworkUri = Uri.parse("content://media/external/audio/albumart");

    public static Bitmap getArtwork(Context context, long j, long j2) throws Throwable {
        InputStream inputStreamOpenInputStream;
        Bitmap artworkFromFile;
        InputStream inputStream = null;
        if (j2 < 0) {
            if (j < 0 || (artworkFromFile = getArtworkFromFile(context, j, -1L)) == null) {
                return null;
            }
            return artworkFromFile;
        }
        ContentResolver contentResolver = context.getContentResolver();
        Uri uriWithAppendedId = ContentUris.withAppendedId(sArtworkUri, j2);
        if (uriWithAppendedId == null) {
            return null;
        }
        try {
            try {
                inputStreamOpenInputStream = contentResolver.openInputStream(uriWithAppendedId);
            } catch (FileNotFoundException unused) {
            }
        } catch (Throwable th) {
            th = th;
            inputStreamOpenInputStream = inputStream;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            options.inDither = false;
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
            if (inputStreamOpenInputStream != null) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException unused2) {
                }
            }
            return bitmapDecodeStream;
        } catch (FileNotFoundException unused3) {
            inputStream = inputStreamOpenInputStream;
            Bitmap artworkFromFile2 = getArtworkFromFile(context, j, j2);
            if (artworkFromFile2 != null && artworkFromFile2.getConfig() == null) {
                artworkFromFile2 = artworkFromFile2.copy(Bitmap.Config.RGB_565, false);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            return artworkFromFile2;
        } catch (Throwable th2) {
            th = th2;
            if (inputStreamOpenInputStream != null) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException unused5) {
                }
            }
            throw th;
        }
    }

    private static Bitmap getArtworkFromFile(Context context, long j, long j2) throws FileNotFoundException {
        if (j2 < 0 && j < 0) {
            throw new IllegalArgumentException("Must specify an album or a song id");
        }
        Bitmap bitmapDecodeFileDescriptor = null;
        try {
            if (j2 < 0) {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(Uri.parse("content://media/external/audio/media/" + j + "/albumart"), "r");
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                }
            } else {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor2 = context.getContentResolver().openFileDescriptor(ContentUris.withAppendedId(sArtworkUri, j2), "r");
                if (parcelFileDescriptorOpenFileDescriptor2 != null) {
                    bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor2.getFileDescriptor());
                }
            }
        } catch (FileNotFoundException | IllegalStateException unused) {
        }
        return bitmapDecodeFileDescriptor;
    }

    public static void setThumbnailImage(Context context, NVImageView nVImageView, PlayListItem playListItem) throws Throwable {
        String str;
        List<Media> list = playListItem.mediaList;
        if (list != null && list.size() > 0 && playListItem.mediaList.get(0) != null) {
            nVImageView.setImageMedia(playListItem.mediaList.get(0));
            return;
        }
        if (playListItem.needUploadThumbnail && (str = playListItem.thumbnailUrl) != null) {
            nVImageView.setImageUrl(str);
            return;
        }
        if (playListItem.needUploadThumbnail && playListItem.type == 3) {
            try {
                Bitmap artwork = getArtwork(context, playListItem.songId, playListItem.albumId);
                if (artwork != null) {
                    nVImageView.setImageBitmap(artwork);
                    return;
                }
            } catch (OutOfMemoryError unused) {
            }
        }
        nVImageView.setImageDrawable(ContextCompat.getDrawable(context, R.drawable.ic_playlist_media_default_background));
    }
}
