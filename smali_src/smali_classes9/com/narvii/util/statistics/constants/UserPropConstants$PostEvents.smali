.class public final Lcom/narvii/util/statistics/constants/UserPropConstants$PostEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/statistics/constants/UserPropConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostEvents"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/util/statistics/constants/UserPropConstants$PostEvents;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIKES_TOTAL:Ljava/lang/String; = "Likes Total"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STICKER_COMMENTS_TOTAL:Ljava/lang/String; = "Sticker Comments Total"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/statistics/constants/UserPropConstants$PostEvents;

    invoke-direct {v0}, Lcom/narvii/util/statistics/constants/UserPropConstants$PostEvents;-><init>()V

    sput-object v0, Lcom/narvii/util/statistics/constants/UserPropConstants$PostEvents;->INSTANCE:Lcom/narvii/util/statistics/constants/UserPropConstants$PostEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
