package com.narvii.media;

import android.content.Context;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import java.io.File;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
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

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseRecorder() {
        try {
            this.mIsRecording = false;
            Handler handler = Utils.handler;
            handler.removeCallbacks(this.volumeMonitorRunnable);
            handler.removeCallbacks(this.recordTimeRunnable);
            this.iMediaRecordListener = null;
            MediaRecorder mediaRecorder = this.mMediaRecorder;
            if (mediaRecorder != null) {
                mediaRecorder.release();
            }
            this.mMediaRecorder = null;
            this.mRecordFile = null;
        } catch (Exception unused) {
            Log.d("finish release failed");
        }
    }

    public void finishRecord() {
        finishRecord(false);
    }

    public boolean isRecording() {
        return this.mIsRecording;
    }

    public void deleteRecordDir() {
        File file = this.mRecordDir;
        if (file != null) {
            Utils.deleteDir(file);
        }
    }

    public void destroyRecord() {
        File file = this.mRecordFile;
        if (file != null && file.exists()) {
            this.mRecordFile.delete();
        }
        releaseRecorder();
    }

    public void finishRecord(boolean z6) {
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
            this.iMediaRecordListener.onRecordFinish(Uri.fromFile(this.mRecordFile), recordDuration, z6);
        }
        releaseRecorder();
    }

    public long getRecordDuration() {
        if (this.mIsRecording && this.mMediaRecorder != null) {
            return SystemClock.elapsedRealtime() - this.mRecordStartTime;
        }
        return 0L;
    }

    public void startRecord(IMediaRecordListener iMediaRecordListener) {
        this.iMediaRecordListener = iMediaRecordListener;
        if (this.mMediaRecorder != null) {
            destroyRecord();
        }
        try {
            if (this.mMediaRecorder == null) {
                MediaRecorder mediaRecorder = new MediaRecorder();
                this.mMediaRecorder = mediaRecorder;
                mediaRecorder.setAudioSource(1);
                this.mMediaRecorder.setOutputFormat(2);
                this.mMediaRecorder.setAudioEncoder(3);
                this.mMediaRecorder.setAudioEncodingBitRate(48000);
                this.mMediaRecorder.setAudioSamplingRate(SAMPLING_RATE);
                this.mMediaRecorder.setMaxDuration(180000);
                this.mMediaRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener() { // from class: com.narvii.media.MediaRecordManager.3
                    @Override // android.media.MediaRecorder.OnInfoListener
                    public void onInfo(MediaRecorder mediaRecorder2, int i10, int i11) {
                        if (i10 == 800) {
                            MediaRecordManager.this.finishRecord(true);
                        }
                    }
                });
                this.mMediaRecorder.setOnErrorListener(new MediaRecorder.OnErrorListener() { // from class: com.narvii.media.MediaRecordManager.4
                    @Override // android.media.MediaRecorder.OnErrorListener
                    public void onError(MediaRecorder mediaRecorder2, int i10, int i11) {
                        NVToast.makeText(MediaRecordManager.this.mContext, R.string.failed_to_record_voice_message, 0).show();
                        MediaRecordManager.this.releaseRecorder();
                    }
                });
            }
            this.mRecordDir.mkdirs();
            File file = new File(this.mRecordDir, UUID.randomUUID().toString() + ".aac");
            this.mRecordFile = file;
            this.mMediaRecorder.setOutputFile(file.getAbsolutePath());
            this.mMediaRecorder.prepare();
            this.mMediaRecorder.start();
            this.mIsRecording = true;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.mRecordStartTime = jElapsedRealtime;
            if (iMediaRecordListener != null) {
                iMediaRecordListener.onRecordStart(jElapsedRealtime);
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

    public MediaRecordManager(NVContext nVContext) {
        this.mContext = nVContext.getContext();
        this.mRecordDir = new File(this.mContext.getFilesDir(), "recorder");
    }
}
