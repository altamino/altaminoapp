.class final Lcom/google/android/gms/measurement/internal/zzau;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzao;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 8
    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/measurement/internal/zzmi;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const-wide/32 v1, 0x36ee80

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmi;->zza(J)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object v0

    .line 21
    .line 22
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/measurement/internal/zzmi;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmi;->zzb()V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, "Opening the database failed, dropping and recreating it"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const-string v1, "google_app_measurement.db"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    const-string v2, "Failed to delete corrupted db file"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/measurement/internal/zzmi;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmi;->zza()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    return-object v0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    const-string v2, "Failed to open freshly created database"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    throw v0

    .line 109
    .line 110
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    .line 111
    .line 112
    const-string v1, "Database open failed"

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 116
    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v3, "events"

    .line 9
    .line 10
    const-string v4, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 11
    .line 12
    const-string v5, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzad()[Ljava/lang/String;

    .line 16
    move-result-object v6

    .line 17
    move-object v2, p1

    .line 18
    .line 19
    .line 20
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string v3, "conditional_properties"

    .line 29
    .line 30
    const-string v4, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    .line 31
    .line 32
    const-string v5, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    .line 33
    const/4 v6, 0x0

    .line 34
    .line 35
    .line 36
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    const-string v3, "user_attributes"

    .line 45
    .line 46
    const-string v4, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 47
    .line 48
    const-string v5, "app_id,name,set_timestamp,value"

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzaj()[Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    .line 54
    .line 55
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    const-string v3, "apps"

    .line 64
    .line 65
    const-string v4, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    .line 66
    .line 67
    const-string v5, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzab()[Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    .line 73
    .line 74
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    const-string v3, "queue"

    .line 83
    .line 84
    const-string v4, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 85
    .line 86
    const-string v5, "app_id,bundle_end_timestamp,data"

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzag()[Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    .line 93
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    const-string v3, "raw_events_metadata"

    .line 102
    .line 103
    const-string v4, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    .line 104
    .line 105
    const-string v5, "app_id,metadata_fingerprint,metadata"

    .line 106
    const/4 v6, 0x0

    .line 107
    .line 108
    .line 109
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    const-string v3, "raw_events"

    .line 118
    .line 119
    const-string v4, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 120
    .line 121
    const-string v5, "app_id,name,timestamp,metadata_fingerprint,data"

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzah()[Ljava/lang/String;

    .line 125
    move-result-object v6

    .line 126
    .line 127
    .line 128
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    .line 130
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    const-string v3, "event_filters"

    .line 137
    .line 138
    const-string v4, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    .line 139
    .line 140
    const-string v5, "app_id,audience_id,filter_id,event_name,data"

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzae()[Ljava/lang/String;

    .line 144
    move-result-object v6

    .line 145
    .line 146
    .line 147
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    const-string v3, "property_filters"

    .line 156
    .line 157
    const-string v4, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    .line 158
    .line 159
    const-string v5, "app_id,audience_id,filter_id,property_name,data"

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzaf()[Ljava/lang/String;

    .line 163
    move-result-object v6

    .line 164
    .line 165
    .line 166
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    .line 168
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    const-string v3, "audience_filter_values"

    .line 175
    .line 176
    const-string v4, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    .line 177
    .line 178
    const-string v5, "app_id,audience_id,current_results"

    .line 179
    const/4 v6, 0x0

    .line 180
    .line 181
    .line 182
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    .line 184
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    const-string v3, "app2"

    .line 191
    .line 192
    const-string v4, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    .line 193
    .line 194
    const-string v5, "app_id,first_open_count"

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzaa()[Ljava/lang/String;

    .line 198
    move-result-object v6

    .line 199
    .line 200
    .line 201
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 202
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    const-string v3, "main_event_params"

    .line 210
    .line 211
    const-string v4, "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 212
    .line 213
    const-string v5, "app_id,event_id,children_to_process,main_event"

    .line 214
    const/4 v6, 0x0

    .line 215
    .line 216
    .line 217
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 218
    .line 219
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    const-string v3, "default_event_params"

    .line 226
    .line 227
    const-string v4, "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 228
    .line 229
    const-string v5, "app_id,parameters"

    .line 230
    .line 231
    .line 232
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 233
    .line 234
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 238
    move-result-object v1

    .line 239
    .line 240
    const-string v3, "consent_settings"

    .line 241
    .line 242
    const-string v4, "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));"

    .line 243
    .line 244
    const-string v5, "app_id,consent_state"

    .line 245
    .line 246
    .line 247
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    .line 248
    move-result v0

    .line 249
    .line 250
    if-eqz v0, :cond_0

    .line 251
    .line 252
    .line 253
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzac()[Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    :goto_0
    move-object v6, v0

    .line 256
    goto :goto_1

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 258
    goto :goto_0

    .line 259
    :goto_1
    move-object v2, p1

    .line 260
    .line 261
    .line 262
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    .line 266
    move-result v0

    .line 267
    .line 268
    if-eqz v0, :cond_1

    .line 269
    .line 270
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzao;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 274
    move-result-object v1

    .line 275
    .line 276
    const-string v3, "trigger_uris"

    .line 277
    .line 278
    const-string v4, "CREATE TABLE IF NOT EXISTS trigger_uris ( app_id TEXT NOT NULL, trigger_uri TEXT NOT NULL, timestamp_millis INTEGER NOT NULL, source INTEGER NOT NULL);"

    .line 279
    .line 280
    const-string v5, "app_id,trigger_uri,source,timestamp_millis"

    .line 281
    .line 282
    .line 283
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzao;->zzai()[Ljava/lang/String;

    .line 284
    move-result-object v6

    .line 285
    move-object v2, p1

    .line 286
    .line 287
    .line 288
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 289
    :cond_1
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method
