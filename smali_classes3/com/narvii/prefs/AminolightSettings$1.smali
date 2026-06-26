.class Lcom/narvii/prefs/AminolightSettings$1;
.super Ljava/lang/Object;
.source "AminolightSettings.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AminolightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/list/prefs/PrefsToggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/AminolightSettings;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AminolightSettings;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/narvii/prefs/AminolightSettings$1;->this$0:Lcom/narvii/prefs/AminolightSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 2

    .line 238
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v1, 0x7f0f11ae

    if-ne v0, v1, :cond_0

    iget-boolean v1, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    sput-boolean v1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const-string v0, "debug"

    invoke-static {v0, v1}, Lcom/narvii/util/DBAminoLightHelper;->setBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v1, 0x7f0f11af

    if-ne v0, v1, :cond_1

    iget-boolean v1, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    const-string v0, "show_fake_checkin"

    invoke-static {v0, v1}, Lcom/narvii/util/DBAminoLightHelper;->setBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v1, 0x7f0f11b0

    if-ne v0, v1, :cond_2

    iget-boolean v1, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    const-string v0, "stop_send_active"

    invoke-static {v0, v1}, Lcom/narvii/util/DBAminoLightHelper;->setBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v1, 0x7f0f11b1

    if-ne v0, v1, :cond_3

    iget-boolean v1, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    const-string v0, "show_visitor_count"

    invoke-static {v0, v1}, Lcom/narvii/util/DBAminoLightHelper;->setBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/AminolightSettings$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
