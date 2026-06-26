.class public Lcom/narvii/util/KeyboardSharedPreferences;
.super Ljava/lang/Object;
.source "KeyboardSharedPreferences.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "keyboard"

.field private static final KEY_KEYBOARD_HEIGHT:Ljava/lang/String; = "height"

.field private static volatile SP:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;I)I
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/narvii/util/KeyboardSharedPreferences;->with(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "height"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static save(Landroid/content/Context;I)Z
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/narvii/util/KeyboardSharedPreferences;->with(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "height"

    .line 19
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 20
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method private static with(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .line 24
    sget-object v0, Lcom/narvii/util/KeyboardSharedPreferences;->SP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/narvii/util/KeyboardSharedPreferences;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/narvii/util/KeyboardSharedPreferences;->SP:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    const-string v1, "keyboard"

    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/narvii/util/KeyboardSharedPreferences;->SP:Landroid/content/SharedPreferences;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 32
    :cond_1
    :goto_0
    sget-object p0, Lcom/narvii/util/KeyboardSharedPreferences;->SP:Landroid/content/SharedPreferences;

    return-object p0
.end method
