package com.narvii.media;

import android.content.Context;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.exoplayer2.source.hls.DefaultHlsExtractorFactory;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/* loaded from: classes3.dex */
public class MediaRecordManager {
    public static final int ENCODE_BIT_RATE = 48000;
    public static final int MAX_DURATION = 180000;
    public static final int SAMPLING_RATE = 22050;
    private IMediaRecordListener iMediaRecordListener;
    private Context mContext;
    private boolean mIsRecording;
    private MediaRecorder mMediaRecorder;
    private File mRecordDir;
    private File mRecordFile;
    private long mRecordStartTime;
    Runnable volumeMonitorRunnable = new Runnable() { // from class: com.narvii.media.MediaRecordManager.1
        @Override // java.lang.Runnable
        public void run() {
            if (MediaRecordManager.this.mMediaRecorder == null || !MediaRecordManager.this.isRecording()) {
                return;
            }
            if (MediaRecordManager.this.iMediaRecordListener != null) {
                MediaRecordManager.this.iMediaRecordListener.onVolumeChange(MediaRecordManager.this.mMediaRecorder.getMaxAmplitude());
            }
            Utils.handler.postDelayed(this, 30L);
        }
    };
    Runnable recordTimeRunnable = new Runnable() { // from class: com.narvii.media.MediaRecordManager.2
        @Override // java.lang.Runnable
        public void run() {
            if (MediaRecordManager.this.mMediaRecorder == null || !MediaRecordManager.this.isRecording()) {
                return;
            }
            if (MediaRecordManager.this.iMediaRecordListener != null) {
                MediaRecordManager.this.iMediaRecordListener.onRecordTimeChange(SystemClock.elapsedRealtime() - MediaRecordManager.this.mRecordStartTime);
            }
            Utils.handler.postDelayed(this, 200L);
        }
    };

    public boolean isRecording() {
        return this.mIsRecording;
    }

    public MediaRecordManager(NVContext nVContext) {
        this.mContext = nVContext.getContext();
        this.mRecordDir = new File(this.mContext.getFilesDir(), "recorder");
    }

    public void deleteRecordDir() {
        File file = this.mRecordDir;
        if (file != null) {
            Utils.deleteDir(file);
        }
    }

    public void startRecord(IMediaRecordListener iMediaRecordListener) throws IllegalStateException, IOException, IllegalArgumentException {
        this.iMediaRecordListener = iMediaRecordListener;
        if (this.mMediaRecorder != null) {
            destroyRecord();
        }
        try {
            if (this.mMediaRecorder == null) {
                this.mMediaRecorder = new MediaRecorder();
                this.mMediaRecorder.setAudioSource(1);
                this.mMediaRecorder.setOutputFormat(2);
                this.mMediaRecorder.setAudioEncoder(3);
                this.mMediaRecorder.setAudioEncodingBitRate(ENCODE_BIT_RATE);
                this.mMediaRecorder.setAudioSamplingRate(SAMPLING_RATE);
                this.mMediaRecorder.setMaxDuration(180000);
                this.mMediaRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener() { // from class: com.narvii.media.MediaRecordManager.3
                    @Override // android.media.MediaRecorder.OnInfoListener
                    public void onInfo(MediaRecorder mediaRecorder, int i, int i2) throws IllegalStateException {
                        if (i == 800) {
                            MediaRecordManager.this.finishRecord(true);
                        }
                    }
                });
                this.mMediaRecorder.setOnErrorListener(new MediaRecorder.OnErrorListener() { // from class: com.narvii.media.MediaRecordManager.4
                    @Override // android.media.MediaRecorder.OnErrorListener
                    public void onError(MediaRecorder mediaRecorder, int i, int i2) {
                        NVToast.makeText(MediaRecordManager.this.mContext, R.string.failed_to_record_voice_message, 0).show();
                        MediaRecordManager.this.releaseRecorder();
                    }
                });
            }
            this.mRecordDir.mkdirs();
            this.mRecordFile = new File(this.mRecordDir, UUID.randomUUID().toString() + DefaultHlsExtractorFactory.AAC_FILE_EXTENSION);
            this.mMediaRecorder.setOutputFile(this.mRecordFile.getAbsolutePath());
            this.mMediaRecorder.prepare();
            this.mMediaRecorder.start();
            this.mIsRecording = true;
            this.mRecordStartTime = SystemClock.elapsedRealtime();
            if (iMediaRecordListener != null) {
                iMediaRecordListener.onRecordStart(this.mRecordStartTime);
            }
            Utils.post(this.volumeMonitorRunnable);
            Utils.post(this.recordTimeRunnable);
        } catch (Exception e) {
            if (e.getMessage() != null) {
                Log.d(e.getMessage());
            }
            NVToast.makeText(this.mContext, R.string.failed_to_record_voice_message, 0).show();
            releaseRecorder();
        }
    }

    public long getRecordDuration() {
        if (this.mIsRecording && this.mMediaRecorder != null) {
            return SystemClock.elapsedRealtime() - this.mRecordStartTime;
        }
        return 0L;
    }

    public void finishRecord() throws IllegalStateException {
        finishRecord(false);
    }

    public void finishRecord(boolean z) throws IllegalStateException {
        long recordDuration = getRecordDuration();
        if (this.mMediaRecorder != null && isRecording()) {
            try {
                this.mMediaRecorder.stop();
            } catch (Exception unused) {
                Log.d("finish stop failed");
            }
        }
        if (isRecording() && this.iMediaRecordListener != null) {
            Log.i("record", this.mRecordFile.getAbsolutePath() + " " + this.mRecordFile.length());
            this.iMediaRecordListener.onRecordFinish(Uri.fromFile(this.mRecordFile), recordDuration, z);
        }
        releaseRecorder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseRecorder() {
        try {
            this.mIsRecording = false;
            Utils.handler.removeCallbacks(this.volumeMonitorRunnable);
            Utils.handler.removeCallbacks(this.recordTimeRunnable);
            this.iMediaRecordListener = null;
            if (this.mMediaRecorder != null) {
                this.mMediaRecorder.release();
            }
            this.mMediaRecorder = null;
            this.mRecordFile = null;
        } catch (Exception unused) {
            Log.d("finish release failed");
        }
    }

    public void destroyRecord() {
        File file = this.mRecordFile;
        if (file != null && file.exists()) {
            this.mRecordFile.delete();
        }
        releaseRecorder();
    }
}
