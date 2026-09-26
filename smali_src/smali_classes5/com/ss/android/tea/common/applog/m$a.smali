.class Lcom/ss/android/tea/common/applog/m$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/tea/common/applog/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    const-string v2, "ss_app_log.db"

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    const-string v0, "CREATE TABLE session ( _id INTEGER PRIMARY KEY AUTOINCREMENT, value VARCHAR NOT NULL, timestamp INTEGER, duration INTEGER, non_page INTEGER, app_version VARCHAR, version_code INTEGER, pausetime INTEGER,launch_sent INTEGER NOT NULL DEFAULT 0 , event_index INTEGER NOT NULL DEFAULT 0  )"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "CREATE TABLE event ( _id INTEGER PRIMARY KEY AUTOINCREMENT, category VARCHAR, tag VARCHAR, label VARCHAR, value INTEGER, ext_value INTEGER, ext_json TEXT, user_id INTEGER, timestamp INTEGER, session_id INTEGER, event_index INTEGER NOT NULL DEFAULT 0 )"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "CREATE TABLE page ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR, duration INTEGER, session_id INTEGER )"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "CREATE TABLE queue ( _id INTEGER PRIMARY KEY AUTOINCREMENT, value TEXT, is_crash INTEGER NOT NULL DEFAULT 0, log_type INTEGER NOT NULL DEFAULT 0, timestamp INTEGER, retry_count INTEGER, retry_time INTEGER )"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "CREATE TABLE mon_log ( _id INTEGER PRIMARY KEY AUTOINCREMENT, log_type VARCHAR, value TEXT )"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "CREATE TABLE misc_log ( _id INTEGER PRIMARY KEY AUTOINCREMENT, log_type VARCHAR, value TEXT, session_id INTEGER  )"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v1, "create db exception "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    const-string v0, "AppLog"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/bytedance/tea/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    .line 3
    if-ge p2, p3, :cond_0

    .line 4
    .line 5
    const-string p3, "ALTER TABLE event ADD COLUMN user_id INTEGER"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    :cond_0
    const/4 p3, 0x3

    .line 10
    .line 11
    if-ge p2, p3, :cond_1

    .line 12
    .line 13
    const-string p3, "ALTER TABLE session ADD COLUMN launch_sent INTEGER NOT NULL DEFAULT 0"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    :cond_1
    const/4 p3, 0x4

    .line 18
    .line 19
    if-ge p2, p3, :cond_2

    .line 20
    .line 21
    const-string p3, "ALTER TABLE queue ADD COLUMN is_crash INTEGER NOT NULL DEFAULT 0"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    :cond_2
    const/4 p3, 0x5

    .line 26
    .line 27
    if-ge p2, p3, :cond_3

    .line 28
    .line 29
    const-string p3, "ALTER TABLE event ADD COLUMN ext_json TEXT"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    :cond_3
    const/4 p3, 0x6

    .line 34
    .line 35
    if-ge p2, p3, :cond_4

    .line 36
    .line 37
    const-string p3, "ALTER TABLE queue ADD COLUMN log_type INTEGER NOT NULL DEFAULT 0"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    .line 42
    const-string p3, "CREATE TABLE mon_log ( _id INTEGER PRIMARY KEY AUTOINCREMENT, log_type VARCHAR, value TEXT )"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    :cond_4
    const/4 p3, 0x7

    .line 47
    .line 48
    if-ge p2, p3, :cond_5

    .line 49
    .line 50
    const-string p3, "CREATE TABLE misc_log ( _id INTEGER PRIMARY KEY AUTOINCREMENT, log_type VARCHAR, value TEXT, session_id INTEGER  )"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    .line 55
    :cond_5
    const/16 p3, 0x8

    .line 56
    .line 57
    if-ge p2, p3, :cond_6

    .line 58
    .line 59
    const-string p3, "ALTER TABLE event ADD COLUMN event_index INTEGER NOT NULL DEFAULT 0"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    .line 64
    :cond_6
    const/16 p3, 0x9

    .line 65
    .line 66
    if-ge p2, p3, :cond_7

    .line 67
    .line 68
    const-string p2, "ALTER TABLE session ADD COLUMN event_index INTEGER NOT NULL DEFAULT 0"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    :cond_7
    return-void
.end method
