.class final Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1;

    invoke-direct {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1;-><init>()V

    sput-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(F)Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1;->invoke(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
