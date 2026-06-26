.class public Lcom/narvii/permisson/NVPermission$Builder;
.super Ljava/lang/Object;
.source "NVPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/permisson/NVPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field nvPermission:Lcom/narvii/permisson/NVPermission;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lcom/narvii/permisson/NVPermission;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/narvii/permisson/NVPermission;-><init>(Landroid/app/Activity;Lcom/narvii/permisson/NVPermission$1;)V

    iput-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/narvii/permisson/NVPermission$1;)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission$Builder;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lcom/narvii/permisson/NVPermission;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/narvii/permisson/NVPermission;-><init>(Landroid/support/v4/app/Fragment;Lcom/narvii/permisson/NVPermission$1;)V

    iput-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/Fragment;Lcom/narvii/permisson/NVPermission$1;)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 275
    invoke-virtual {p0, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    return-object p1
.end method

.method public permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->listener:Lcom/narvii/permisson/PermissionListener;

    return-object p0
.end method

.method public permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method public rationaleDneyCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->rationaleDenyCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method public rationaleMessage(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    return-object p0
.end method

.method public rationaleTitle(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    return-object p0
.end method

.method public request()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission;->request()V

    return-void
.end method

.method public requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    iput p1, v0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    return-object p0
.end method
