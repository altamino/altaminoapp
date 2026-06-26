.class final Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "ScenePollPostFragment.kt"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenePollPostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenePollPostFragment.kt\ncom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,361:1\n958#2,3:362\n*E\n*S KotlinDebug\n*F\n+ 1 ScenePollPostFragment.kt\ncom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2\n*L\n101#1,3:362\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2;

    invoke-direct {v0}, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2;-><init>()V

    sput-object v0, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2;->INSTANCE:Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 35
    invoke-virtual/range {p0 .. p6}, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/String;
    .locals 0

    const-string p2, "source"

    .line 101
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 363
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-ge p3, p5, :cond_2

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    const/16 p6, 0xa

    if-ne p5, p6, :cond_0

    const/4 p5, 0x1

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    :goto_1
    if-eqz p5, :cond_1

    add-int/lit8 p4, p4, 0x1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 102
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p4, p1, :cond_3

    const-string p1, ""

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
