.class public final Lcom/narvii/util/NVToast;
.super Ljava/lang/Object;
.source "NVToast.java"

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

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/narvii/util/NVToast;->priorityQueue:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    .line 53
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    .line 54
    sput-boolean v1, Lcom/narvii/util/NVToast;->fallbackToSystemToast:Z

    .line 63
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    .line 65
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    const-string v2, "mTN"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/NVToast;->sField_TN:Ljava/lang/reflect/Field;

    .line 66
    sget-object v0, Lcom/narvii/util/NVToast;->sField_TN:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    sget-object v0, Lcom/narvii/util/NVToast;->sField_TN:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mHandler"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/NVToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    .line 68
    sget-object v0, Lcom/narvii/util/NVToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "toast"

    .line 70
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/util/NVToast$2;

    invoke-direct {v0}, Lcom/narvii/util/NVToast$2;-><init>()V

    sput-object v0, Lcom/narvii/util/NVToast;->dequeue:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Lcom/narvii/util/NVToast$3;

    invoke-direct {v0}, Lcom/narvii/util/NVToast$3;-><init>()V

    sput-object v0, Lcom/narvii/util/NVToast;->remove:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/NVToast;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/narvii/util/NVToast;->priority:F

    return p0
.end method

.method static synthetic access$100()Lcom/narvii/util/NVToast;
    .locals 1

    .line 34
    sget-object v0, Lcom/narvii/util/NVToast;->current:Lcom/narvii/util/NVToast;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .locals 1

    .line 34
    sget-object v0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/narvii/util/NVToast;)Lcom/narvii/util/NVToast;
    .locals 0

    .line 34
    sput-object p0, Lcom/narvii/util/NVToast;->current:Lcom/narvii/util/NVToast;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/Runnable;
    .locals 1

    .line 34
    sget-object v0, Lcom/narvii/util/NVToast;->dequeue:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/LinkedList;
    .locals 1

    .line 34
    sget-object v0, Lcom/narvii/util/NVToast;->priorityQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300()Lcom/narvii/util/NVToast;
    .locals 1

    .line 34
    sget-object v0, Lcom/narvii/util/NVToast;->last:Lcom/narvii/util/NVToast;

    return-object v0
.end method

.method static synthetic access$302(Lcom/narvii/util/NVToast;)Lcom/narvii/util/NVToast;
    .locals 0

    .line 34
    sput-object p0, Lcom/narvii/util/NVToast;->last:Lcom/narvii/util/NVToast;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/util/NVToast;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/util/NVToast;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/util/NVToast;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/narvii/util/NVToast;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/util/NVToast;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/narvii/util/NVToast;)Ljava/lang/CharSequence;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/util/NVToast;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 34
    sput-boolean p0, Lcom/narvii/util/NVToast;->fallbackToSystemToast:Z

    return p0
.end method

.method static synthetic access$800(Lcom/narvii/util/NVToast;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/narvii/util/NVToast;->duration:I

    return p0
.end method

.method static synthetic access$900()Ljava/lang/Runnable;
    .locals 1

    .line 34
    sget-object v0, Lcom/narvii/util/NVToast;->remove:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static dismiss(Z)V
    .locals 2

    .line 108
    sget-object v0, Lcom/narvii/util/NVToast;->current:Lcom/narvii/util/NVToast;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    iget v0, v0, Lcom/narvii/util/NVToast;->priority:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 109
    :cond_0
    sget-object v0, Lcom/narvii/util/NVToast;->remove:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 110
    sget-object v0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/narvii/util/NVToast;->remove:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/narvii/util/NVToast;->last:Lcom/narvii/util/NVToast;

    if-eqz p0, :cond_2

    .line 114
    sget-object p0, Lcom/narvii/util/NVToast;->priorityQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 115
    sget-object p0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/narvii/util/NVToast;->dequeue:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static hook(Landroid/widget/Toast;)V
    .locals 3

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 78
    :try_start_0
    sget-object v0, Lcom/narvii/util/NVToast;->sField_TN:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 79
    sget-object v0, Lcom/narvii/util/NVToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 80
    sget-object v1, Lcom/narvii/util/NVToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    new-instance v2, Lcom/narvii/util/NVToast$SafelyHandlerWrapper;

    invoke-direct {v2, v0}, Lcom/narvii/util/NVToast$SafelyHandlerWrapper;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "toast"

    .line 82
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;
    .locals 1

    .line 104
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

    .line 97
    new-instance v0, Lcom/narvii/util/NVToast;

    invoke-direct {v0, p0}, Lcom/narvii/util/NVToast;-><init>(Landroid/content/Context;)V

    .line 98
    iput-object p1, v0, Lcom/narvii/util/NVToast;->text:Ljava/lang/CharSequence;

    .line 99
    iput p2, v0, Lcom/narvii/util/NVToast;->duration:I

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 180
    sget v1, Lcom/narvii/lib/R$layout;->toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 181
    sget v1, Lcom/narvii/lib/R$id;->toast_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 182
    iget-object v2, p0, Lcom/narvii/util/NVToast;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-static {v1}, Lcom/narvii/util/NVToast;->hook(Landroid/widget/Toast;)V

    .line 186
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 187
    iget v0, p0, Lcom/narvii/util/NVToast;->duration:I

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    const/4 v0, 0x0

    const/16 v2, 0x11

    .line 189
    invoke-virtual {v1, v2, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 190
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setPriority(F)Lcom/narvii/util/NVToast;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 123
    iput p1, p0, Lcom/narvii/util/NVToast;->priority:F

    return-object p0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSkipGeneralShowCheck(Z)Lcom/narvii/util/NVToast;
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/narvii/util/NVToast;->skipGeneralShowCheck:Z

    return-object p0
.end method

.method public show()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 131
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 132
    iget-boolean v1, p0, Lcom/narvii/util/NVToast;->skipGeneralShowCheck:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const-string/jumbo v1, "topActivity"

    .line 133
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/services/TopActivityService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    :goto_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_2

    .line 136
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isHandlingATO()Z

    move-result v1

    .line 137
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getAtoMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/narvii/util/NVToast;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isHandlingJoinCommunity()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 150
    :cond_2
    sget-object v0, Lcom/narvii/util/NVToast;->notificationEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 151
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    iget-object v1, p0, Lcom/narvii/util/NVToast;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/NVToast;->notificationEnabled:Ljava/lang/Boolean;

    .line 155
    :cond_3
    sget-object v0, Lcom/narvii/util/NVToast;->notificationEnabled:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_6

    sget-boolean v0, Lcom/narvii/util/NVToast;->fallbackToSystemToast:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 162
    :cond_4
    iget v0, p0, Lcom/narvii/util/NVToast;->priority:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 163
    sput-object p0, Lcom/narvii/util/NVToast;->last:Lcom/narvii/util/NVToast;

    goto :goto_1

    .line 165
    :cond_5
    sget-object v0, Lcom/narvii/util/NVToast;->priorityQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/narvii/util/NVToast;->priorityQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/narvii/util/NVToast$1;

    invoke-direct {v1, p0}, Lcom/narvii/util/NVToast$1;-><init>(Lcom/narvii/util/NVToast;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    :goto_1
    sget-object v0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/narvii/util/NVToast;->dequeue:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 156
    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 157
    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->run()V

    goto :goto_3

    .line 159
    :cond_7
    sget-object v0, Lcom/narvii/util/NVToast;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void
.end method
