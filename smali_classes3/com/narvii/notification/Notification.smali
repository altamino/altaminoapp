.class public Lcom/narvii/notification/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ACTION_DELETE:Ljava/lang/String; = "delete"

.field public static final ACTION_EDIT:Ljava/lang/String; = "edit"

.field public static final ACTION_NEW:Ljava/lang/String; = "new"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "update"

.field private static final FMT:Ljava/text/SimpleDateFormat;


# instance fields
.field public action:Ljava/lang/String;

.field public bundle:Landroid/os/Bundle;

.field public id:Ljava/lang/String;

.field public obj:Ljava/lang/Object;

.field public objectType:I

.field public parentId:Ljava/lang/String;

.field public response:Lcom/narvii/model/api/ApiResponse;

.field public time:J

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/narvii/notification/Notification;->FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/narvii/notification/Notification;->objectType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/narvii/notification/Notification;->objectType:I

    .line 57
    iput-object p1, p0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 59
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->objectType()I

    move-result p1

    iput p1, p0, Lcom/narvii/notification/Notification;->objectType:I

    .line 60
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 61
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/notification/Notification;
    .locals 3

    .line 67
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    .line 68
    iget-wide v1, p0, Lcom/narvii/notification/Notification;->time:J

    iput-wide v1, v0, Lcom/narvii/notification/Notification;->time:J

    .line 69
    iget-object v1, p0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 71
    iget v1, p0, Lcom/narvii/notification/Notification;->objectType:I

    iput v1, v0, Lcom/narvii/notification/Notification;->objectType:I

    .line 72
    iget-object v1, p0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action="

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", id="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget v1, p0, Lcom/narvii/notification/Notification;->objectType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, ", objectType="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/notification/Notification;->objectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", parentId="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", uid="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ", time="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/narvii/notification/Notification;->FMT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/narvii/notification/Notification;->time:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
