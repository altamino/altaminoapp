.class public Lcom/narvii/notification/Notification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ACTION_ADD:Ljava/lang/String; = "add"

.field public static final ACTION_DELETE:Ljava/lang/String; = "delete"

.field public static final ACTION_EDIT:Ljava/lang/String; = "edit"

.field public static final ACTION_NEW:Ljava/lang/String; = "new"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "update"

.field private static final FMT:Ljava/text/SimpleDateFormat;


# instance fields
.field public action:Ljava/lang/String;

.field public bundle:Landroid/os/Bundle;

.field public id:Ljava/lang/String;

.field public index:I

.field public obj:Ljava/lang/Object;

.field public objectType:I

.field public parentId:Ljava/lang/String;

.field public response:Lcom/narvii/model/api/ApiResponse;

.field public time:J

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    const-string v1, "HH:mm:ss"

    .line 5
    .line 6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/notification/Notification;->FMT:Ljava/text/SimpleDateFormat;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/notification/Notification;->objectType:I

    iput v0, p0, Lcom/narvii/notification/Notification;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/notification/Notification;->objectType:I

    iput v0, p0, Lcom/narvii/notification/Notification;->index:I

    iput-object p1, p0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->objectType()I

    move-result p1

    iput p1, p0, Lcom/narvii/notification/Notification;->objectType:I

    .line 5
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/model/NVObject;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iput p3, p0, Lcom/narvii/notification/Notification;->index:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/notification/Notification;
    .locals 3

    .line 2
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    iget-wide v1, p0, Lcom/narvii/notification/Notification;->time:J

    iput-wide v1, v0, Lcom/narvii/notification/Notification;->time:J

    iget-object v1, p0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iget v1, p0, Lcom/narvii/notification/Notification;->objectType:I

    iput v1, v0, Lcom/narvii/notification/Notification;->objectType:I

    iget-object v1, p0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

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

    .line 1
    invoke-virtual {p0}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "action="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, ", id="

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    :cond_0
    iget v1, p0, Lcom/narvii/notification/Notification;->objectType:I

    .line 32
    const/4 v2, -0x1

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    const-string v1, ", objectType="

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget v1, p0, Lcom/narvii/notification/Notification;->objectType:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const-string v1, ", parentId="

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    :cond_2
    iget-object v1, p0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    const-string v1, ", uid="

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    :cond_3
    const-string v1, ", time="

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    sget-object v1, Lcom/narvii/notification/Notification;->FMT:Ljava/text/SimpleDateFormat;

    .line 80
    .line 81
    new-instance v2, Ljava/util/Date;

    .line 82
    .line 83
    iget-wide v3, p0, Lcom/narvii/notification/Notification;->time:J

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "\n"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    return-object v0
.end method
