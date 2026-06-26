.class public Lcom/narvii/language/LanguageSpec;
.super Ljava/lang/Object;
.source "LanguageSpec.java"


# instance fields
.field public code:Ljava/lang/String;

.field public localizedName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/narvii/language/LanguageSpec;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/narvii/language/LanguageSpec;->localizedName:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    return-void
.end method
