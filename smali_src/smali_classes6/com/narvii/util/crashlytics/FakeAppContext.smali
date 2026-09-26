.class public Lcom/narvii/util/crashlytics/FakeAppContext;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private final fakePackageName:Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 4
    .line 5
    const-class v0, Landroid/content/ContextWrapper;

    .line 6
    .line 7
    const-string v1, "mBase"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->fakePackageName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->pm:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/crashlytics/FakePackageManager;

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->fakePackageName:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/util/crashlytics/FakePackageManager;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->pm:Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->pm:Landroid/content/pm/PackageManager;

    .line 28
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->fakePackageName:Ljava/lang/String;

    return-object v0
.end method
