.class public Lcom/narvii/util/crashlytics/FakeAppContext;
.super Landroid/app/Application;
.source "FakeAppContext.java"


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

    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 21
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "mBase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 23
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iput-object p2, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->fakePackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->pm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/narvii/util/crashlytics/FakePackageManager;

    invoke-super {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->fakePackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/util/crashlytics/FakePackageManager;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->pm:Landroid/content/pm/PackageManager;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakeAppContext;->fakePackageName:Ljava/lang/String;

    return-object v0
.end method
