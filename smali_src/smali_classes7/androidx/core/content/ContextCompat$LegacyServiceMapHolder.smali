.class final Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyServiceMapHolder"
.end annotation


# static fields
.field static final SERVICES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    .line 8
    .line 9
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 10
    .line 11
    const-string v2, "telephony_subscription_service"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    const-class v1, Landroid/app/usage/UsageStatsManager;

    .line 17
    .line 18
    const-string v2, "usagestats"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    const-class v1, Landroid/appwidget/AppWidgetManager;

    .line 24
    .line 25
    const-string v2, "appwidget"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    const-class v1, Landroid/os/BatteryManager;

    .line 31
    .line 32
    const-string v2, "batterymanager"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    const-class v1, Landroid/hardware/camera2/CameraManager;

    .line 38
    .line 39
    const-string v2, "camera"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    const-class v1, Landroid/app/job/JobScheduler;

    .line 45
    .line 46
    const-string v2, "jobscheduler"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    const-class v1, Landroid/content/pm/LauncherApps;

    .line 52
    .line 53
    const-string v2, "launcherapps"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    const-class v1, Landroid/media/projection/MediaProjectionManager;

    .line 59
    .line 60
    const-string v2, "media_projection"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    const-class v1, Landroid/media/session/MediaSessionManager;

    .line 66
    .line 67
    const-string v2, "media_session"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    const-class v1, Landroid/content/RestrictionsManager;

    .line 73
    .line 74
    const-string v2, "restrictions"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    const-class v1, Landroid/telecom/TelecomManager;

    .line 80
    .line 81
    const-string v2, "telecom"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    const-class v1, Landroid/media/tv/TvInputManager;

    .line 87
    .line 88
    const-string v2, "tv_input"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    const-class v1, Landroid/app/AppOpsManager;

    .line 94
    .line 95
    const-string v2, "appops"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    const-class v1, Landroid/view/accessibility/CaptioningManager;

    .line 101
    .line 102
    const-string v2, "captioning"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    const-class v1, Landroid/hardware/ConsumerIrManager;

    .line 108
    .line 109
    const-string v2, "consumer_ir"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    const-class v1, Landroid/print/PrintManager;

    .line 115
    .line 116
    const-string v2, "print"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 122
    .line 123
    const-string v2, "bluetooth"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 129
    .line 130
    const-string v2, "display"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    const-class v1, Landroid/os/UserManager;

    .line 136
    .line 137
    const-string v2, "user"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    const-class v1, Landroid/hardware/input/InputManager;

    .line 143
    .line 144
    const-string v2, "input"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    const-class v1, Landroid/media/MediaRouter;

    .line 150
    .line 151
    const-string v2, "media_router"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    const-class v1, Landroid/net/nsd/NsdManager;

    .line 157
    .line 158
    const-string v2, "servicediscovery"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 164
    .line 165
    const-string v2, "accessibility"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    const-class v1, Landroid/accounts/AccountManager;

    .line 171
    .line 172
    const-string v2, "account"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    const-class v1, Landroid/app/ActivityManager;

    .line 178
    .line 179
    const-string v2, "activity"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    const-class v1, Landroid/app/AlarmManager;

    .line 185
    .line 186
    const-string v2, "alarm"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    const-class v1, Landroid/media/AudioManager;

    .line 192
    .line 193
    const-string v2, "audio"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    const-class v1, Landroid/content/ClipboardManager;

    .line 199
    .line 200
    const-string v2, "clipboard"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    const-class v1, Landroid/net/ConnectivityManager;

    .line 206
    .line 207
    const-string v2, "connectivity"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 213
    .line 214
    const-string v2, "device_policy"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    const-class v1, Landroid/app/DownloadManager;

    .line 220
    .line 221
    const-string v2, "download"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    const-class v1, Landroid/os/DropBoxManager;

    .line 227
    .line 228
    const-string v2, "dropbox"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 234
    .line 235
    const-string v2, "input_method"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    const-class v1, Landroid/app/KeyguardManager;

    .line 241
    .line 242
    const-string v2, "keyguard"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    const-class v1, Landroid/view/LayoutInflater;

    .line 248
    .line 249
    const-string v2, "layout_inflater"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    const-class v1, Landroid/location/LocationManager;

    .line 255
    .line 256
    const-string v2, "location"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    const-class v1, Landroid/nfc/NfcManager;

    .line 262
    .line 263
    const-string v2, "nfc"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    const-class v1, Landroid/app/NotificationManager;

    .line 269
    .line 270
    const-string v2, "notification"

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    const-class v1, Landroid/os/PowerManager;

    .line 276
    .line 277
    const-string v2, "power"

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    const-class v1, Landroid/app/SearchManager;

    .line 283
    .line 284
    const-string v2, "search"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    const-class v1, Landroid/hardware/SensorManager;

    .line 290
    .line 291
    const-string v2, "sensor"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    const-class v1, Landroid/os/storage/StorageManager;

    .line 297
    .line 298
    const-string v2, "storage"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 304
    .line 305
    const-string v2, "phone"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    const-class v1, Landroid/view/textservice/TextServicesManager;

    .line 311
    .line 312
    const-string v2, "textservices"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    const-class v1, Landroid/app/UiModeManager;

    .line 318
    .line 319
    const-string v2, "uimode"

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    const-class v1, Landroid/hardware/usb/UsbManager;

    .line 325
    .line 326
    const-string v2, "usb"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    const-class v1, Landroid/os/Vibrator;

    .line 332
    .line 333
    const-string v2, "vibrator"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    const-class v1, Landroid/app/WallpaperManager;

    .line 339
    .line 340
    const-string v2, "wallpaper"

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 346
    .line 347
    const-string v2, "wifip2p"

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    const-class v1, Landroid/net/wifi/WifiManager;

    .line 353
    .line 354
    const-string v2, "wifi"

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    const-class v1, Landroid/view/WindowManager;

    .line 360
    .line 361
    const-string v2, "window"

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
