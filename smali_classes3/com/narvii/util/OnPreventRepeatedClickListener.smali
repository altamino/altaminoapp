.class public Lcom/narvii/util/OnPreventRepeatedClickListener;
.super Ljava/lang/Object;
.source "OnPreventRepeatedClickListener.kt"

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

.field public static final MIN_CLICK_DELAY_TIME:I = 0x3e8


# instance fields
.field private final delayTime:I

.field private lastClickTime:J

.field private final onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/util/OnPreventRepeatedClickListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/OnPreventRepeatedClickListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/util/OnPreventRepeatedClickListener;->Companion:Lcom/narvii/util/OnPreventRepeatedClickListener$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    iput p2, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->delayTime:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x3e8

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->lastClickTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->delayTime:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->lastClickTime:J

    .line 20
    iget-object v0, p0, Lcom/narvii/util/OnPreventRepeatedClickListener;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
