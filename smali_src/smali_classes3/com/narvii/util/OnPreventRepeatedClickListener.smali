.class public Lcom/narvii/util/OnPreventRepeatedClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/OnPreventRepeatedClickListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/util/OnPreventRepeatedClickListener$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIN_CLICK_DELAY_TIME:I = 0x3e8


# instance fields
.field private final delayTime:I

.field private lastClickTime:J

.field private final onClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/util/OnPreventRepeatedClickListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/OnPreventRepeatedClickListener$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/util/OnPreventRepeatedClickListener;->Companion:Lcom/narvii/util/OnPreventRepeatedClickListener$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x3e8

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;I)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    iput p2, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->delayTime:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x3e8

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->lastClickTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->delayTime:I

    .line 10
    int-to-long v2, v2

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->lastClickTime:J

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 28
    :cond_0
    return-void
.end method
