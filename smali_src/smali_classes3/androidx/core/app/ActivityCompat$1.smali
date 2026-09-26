.class Landroidx/core/app/ActivityCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityCompat;->g(Landroid/app/Activity;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$permissionsArray:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/ActivityCompat$1;->val$permissionsArray:[Ljava/lang/String;

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/core/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/core/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/core/app/ActivityCompat$1;->val$permissionsArray:[Ljava/lang/String;

    .line 20
    array-length v3, v3

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    :goto_0
    if-ge v4, v3, :cond_0

    .line 24
    .line 25
    iget-object v5, p0, Landroidx/core/app/ActivityCompat$1;->val$permissionsArray:[Ljava/lang/String;

    .line 26
    .line 27
    aget-object v5, v5, v4

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v5, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    move-result v5

    .line 32
    .line 33
    aput v5, v0, v4

    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Landroidx/core/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    .line 39
    .line 40
    check-cast v1, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    .line 41
    .line 42
    iget v2, p0, Landroidx/core/app/ActivityCompat$1;->val$requestCode:I

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/core/app/ActivityCompat$1;->val$permissionsArray:[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2, v3, v0}, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 48
    return-void
.end method
