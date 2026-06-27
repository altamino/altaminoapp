package com.narvii.util.deviceid;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import java.io.File;

/* loaded from: classes3.dex */
public class GetDeviceIdHelper extends Activity {
    private final NVContext context;
    private final Context context2;
    private DeviceIDService deviceIdService;
    private GetDeviceIdHelper getDeviceIdHelper;

    public GetDeviceIdHelper(NVContext context, View view) {
        this.context = context;
        this.context2 = context.getContext();
        this.deviceIdService = (DeviceIDService) context.getService("deviceid");
    }

    public GetDeviceIdHelper(NVContext context) {
        this.context = context;
        this.context2 = context.getContext();
    }

    public void writeDeviceId(String deviceId) {
        Log.i("deviceId", "write deviceId: " + deviceId);
        try {
            File file = this.deviceIdService.getFile();
            file.delete();
            Utils.writeToFile(file, deviceId);
        } catch (Exception e) {
            Log.e("GetDeviceHelper", "Fail save deviceId " + e.toString());
        }
    }

    public void writeDeviceId(String deviceId, File file) {
        Log.i("deviceId", "write deviceId: " + deviceId);
        try {
            file.delete();
            Utils.writeToFile(file, deviceId);
        } catch (Exception e) {
            Log.e("GetDeviceHelper", "Fail save deviceId " + e.toString());
        }
    }

    private String getUniqId() {
        StringBuilder result = new StringBuilder();
        for (byte value : this.deviceIdService.getUniquePsuedoID()) {
            result.append(Integer.toString((value & 255) + 256, 16).substring(1));
        }
        return result.toString();
    }

    private String getUniqId(byte[] uniqId) {
        StringBuilder result = new StringBuilder();
        for (byte value : uniqId) {
            result.append(Integer.toString((value & 255) + 256, 16).substring(1));
        }
        return result.toString();
    }
}
