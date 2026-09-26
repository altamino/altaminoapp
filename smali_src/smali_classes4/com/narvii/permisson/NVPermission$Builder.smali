.class public Lcom/narvii/permisson/NVPermission$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/narvii/permisson/NVPermission;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/narvii/permisson/NVPermission;-><init>(Landroid/app/Activity;Lcom/narvii/permisson/f;)V

    iput-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/narvii/permisson/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission$Builder;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/narvii/permisson/NVPermission;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/narvii/permisson/NVPermission;-><init>(Landroidx/fragment/app/Fragment;Lcom/narvii/permisson/f;)V

    iput-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/narvii/permisson/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission$Builder;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 0

    .line 1
    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->listener:Lcom/narvii/permisson/PermissionListener;

    .line 5
    return-object p0
.end method

.method public permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public rationaleDneyCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->rationaleDenyCallback:Lcom/narvii/util/Callback;

    .line 5
    return-object p0
.end method

.method public rationaleMessage(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public rationaleTitle(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public request()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission;->request()V

    .line 6
    return-void
.end method

.method public requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission$Builder;->nvPermission:Lcom/narvii/permisson/NVPermission;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    .line 5
    return-object p0
.end method
