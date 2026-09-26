.class public final Lcom/narvii/util/NVToast;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/NVToast$SafelyHandlerWrapper;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I

.field private static current:Lcom/narvii/util/NVToast;

.field private static final dequeue:Ljava/lang/Runnable;

.field private static fallbackToSystemToast:Z

.field private static final handler:Landroid/os/Handler;

.field private static last:Lcom/narvii/util/NVToast;

.field private static notificationEnabled:Ljava/lang/Boolean;

.field private static final priorityQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/util/NVToast;",
            ">;"
        }
    .end annotation
.end field

.field private static final remove:Ljava/lang/Runnable;

.field private static sField_TN:Ljava/lang/reflect/Field;

.field private static sField_TN_Handler:Ljava/lang/reflect/Field;


# instance fields
.field private context:Landroid/content/Context;

.field private duration:I

.field private priority:F

.field private skipGeneralShowCheck:Z

.field private text:Ljava/lang/CharSequence;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/NVToast;->priorityQueue:Ljava/util/LinkedList;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    const-string v0, "Xiaomi"

    .line 21
    .line 22
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v2, 0x18

    .line 34
    .line 35
    if-ne v0, v2, :cond_0

    .line 36
    .line 37
    sput-boolean v1, Lcom/narvii/util/NVToast;->fallbackToSystemToast:Z

    .line 38
    .line 39
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v2, 0x1a

    .line 42
    .line 43
    if-ge v0, v2, :cond_1

    .line 44
    .line 45
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    .line 46
    .line 47
    const-string v2, "mTN"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sput-object v0, Lcom/narvii/util/NVToast;->sField_TN:Ljava/lang/reflect/Field;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 57
    .line 58
    sget-object v0, Lcom/narvii/util/NVToast;->sField_TN:Ljava/lang/reflect/Field;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    const-string v2, "mHandler"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    sput-object v0, Lcom/narvii/util/NVToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "toast"

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/util/NVToast$2;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0}, Lcom/narvii/util/NVToast$2;-><init>()V

    .line 87
    .line 88
    sput-object v0, Lcom/narvii/util/NVToast;->dequeue:Ljava/lang/Runnable;

    .line 89
    .line 90
    new-instance v0, Lcom/narvii/util/NVToast$3;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Lcom/narvii/util/NVToast$3;-><init>()V

    .line 94
    .line 95
    sput-object v0, Lcom/narvii/util/NVToast;->remove:Ljava/lang/Runnable;

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    .line 10
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/NVToast;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/NVToast;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/util/NVToast;->duration:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/util/NVToast;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/util/NVToast;->priority:F

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/util/NVToast;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/NVToast;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static dismiss(Z)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/NVToast;->current:Lcom/narvii/util/NVToast;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    iget v0, v0, Lcom/narvii/util/NVToast;->priority:F

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/narvii/util/NVToast;->remove:Ljava/lang/Runnable;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 19
    .line 20
    sget-object v1, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    .line 26
    sput-object v0, Lcom/narvii/util/NVToast;->last:Lcom/narvii/util/NVToast;

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    sget-object p0, Lcom/narvii/util/NVToast;->priorityQueue:Ljava/util/LinkedList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 34
    .line 35
    sget-object p0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/util/NVToast;->dequeue:Ljava/lang/Runnable;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    :cond_2
    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/util/NVToast;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/NVToast;->view:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/util/NVToast;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/util/NVToast;->view:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic g()Lcom/narvii/util/NVToast;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/NVToast;->current:Lcom/narvii/util/NVToast;

    return-object v0
.end method

.method static bridge synthetic h()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/NVToast;->dequeue:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static hook(Landroid/widget/Toast;)V
    .locals 3

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lcom/narvii/util/NVToast;->sField_TN:Ljava/lang/reflect/Field;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    sget-object v0, Lcom/narvii/util/NVToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/os/Handler;

    .line 21
    .line 22
    sget-object v1, Lcom/narvii/util/NVToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    .line 23
    .line 24
    new-instance v2, Lcom/narvii/util/NVToast$SafelyHandlerWrapper;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/narvii/util/NVToast$SafelyHandlerWrapper;-><init>(Landroid/os/Handler;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    .line 34
    .line 35
    const-string/jumbo v0, "toast"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method static bridge synthetic i()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic j()Lcom/narvii/util/NVToast;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/NVToast;->last:Lcom/narvii/util/NVToast;

    return-object v0
.end method

.method static bridge synthetic k()Ljava/util/LinkedList;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/NVToast;->priorityQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static bridge synthetic l()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/NVToast;->remove:Ljava/lang/Runnable;

    return-object v0
.end method

.method static bridge synthetic m(Lcom/narvii/util/NVToast;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/narvii/util/NVToast;->current:Lcom/narvii/util/NVToast;

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;
    .locals 1

    .line 1
    new-instance v0, Lcom/narvii/util/NVToast;

    invoke-direct {v0, p0}, Lcom/narvii/util/NVToast;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/narvii/util/NVToast;->text:Ljava/lang/CharSequence;

    iput p2, v0, Lcom/narvii/util/NVToast;->duration:I

    return-object v0
.end method

.method static bridge synthetic n(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/narvii/util/NVToast;->fallbackToSystemToast:Z

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/util/NVToast;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/narvii/util/NVToast;->last:Lcom/narvii/util/NVToast;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "layout_inflater"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/view/LayoutInflater;

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$layout;->toast:I

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget v1, Lcom/narvii/lib/R$id;->toast_message:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/util/NVToast;->text:Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    new-instance v1, Landroid/widget/Toast;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/narvii/util/NVToast;->hook(Landroid/widget/Toast;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 48
    .line 49
    iget v0, p0, Lcom/narvii/util/NVToast;->duration:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 53
    .line 54
    const/16 v0, 0x11

    .line 55
    const/4 v2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 62
    return-void
.end method

.method public setPriority(F)Lcom/narvii/util/NVToast;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/narvii/util/NVToast;->priority:F

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 14
    throw p1
.end method

.method public setSkipGeneralShowCheck(Z)Lcom/narvii/util/NVToast;
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/NVToast;->skipGeneralShowCheck:Z

    return-object p0
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/narvii/util/NVToast;->skipGeneralShowCheck:Z

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "topActivity"

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/services/TopActivityService;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    :goto_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isHandlingATO()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getAtoMessage()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/util/NVToast;->text:Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    return-void

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isHandlingJoinCommunity()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    return-void

    .line 64
    .line 65
    :cond_2
    sget-object v0, Lcom/narvii/util/NVToast;->notificationEnabled:Ljava/lang/Boolean;

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 78
    move-result v0

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    sput-object v0, Lcom/narvii/util/NVToast;->notificationEnabled:Ljava/lang/Boolean;

    .line 85
    .line 86
    :cond_3
    sget-object v0, Lcom/narvii/util/NVToast;->notificationEnabled:Ljava/lang/Boolean;

    .line 87
    .line 88
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    if-eq v0, v1, :cond_6

    .line 91
    .line 92
    sget-boolean v0, Lcom/narvii/util/NVToast;->fallbackToSystemToast:Z

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_4
    iget v0, p0, Lcom/narvii/util/NVToast;->priority:F

    .line 98
    const/4 v1, 0x0

    .line 99
    .line 100
    cmpl-float v0, v0, v1

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    sput-object p0, Lcom/narvii/util/NVToast;->last:Lcom/narvii/util/NVToast;

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :cond_5
    sget-object v0, Lcom/narvii/util/NVToast;->priorityQueue:Ljava/util/LinkedList;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 111
    .line 112
    new-instance v1, Lcom/narvii/util/NVToast$1;

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/narvii/util/NVToast$1;-><init>(Lcom/narvii/util/NVToast;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    .line 120
    :goto_1
    sget-object v0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    .line 121
    .line 122
    sget-object v1, Lcom/narvii/util/NVToast;->dequeue:Ljava/lang/Runnable;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    goto :goto_3

    .line 127
    .line 128
    .line 129
    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    if-ne v0, v1, :cond_7

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->run()V

    .line 140
    goto :goto_3

    .line 141
    .line 142
    :cond_7
    sget-object v0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    :goto_3
    return-void
.end method
