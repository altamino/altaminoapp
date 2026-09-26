.class public final Lcom/narvii/wallet/membership/PrivilegeDataSource;
.super Lcom/narvii/paging/source/SinglePageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/SinglePageDataSource<",
        "Lcom/narvii/wallet/membership/Privilege;",
        ">;"
    }
.end annotation


# instance fields
.field private final privilegeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/wallet/membership/Privilege;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/paging/source/SinglePageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/wallet/membership/PrivilegeDataSource;->privilegeList:Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/wallet/membership/Privilege;

    .line 18
    .line 19
    .line 20
    const v1, 0x7f120c78

    .line 21
    .line 22
    .line 23
    const v2, 0x7f120c6f

    .line 24
    .line 25
    .line 26
    const v3, 0x7f0807bc

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/wallet/membership/Privilege;-><init>(III)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/wallet/membership/Privilege;

    .line 35
    .line 36
    .line 37
    const v1, 0x7f120c76

    .line 38
    .line 39
    .line 40
    const v2, 0x7f120c6d

    .line 41
    .line 42
    .line 43
    const v3, 0x7f0807ba

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/wallet/membership/Privilege;-><init>(III)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/wallet/membership/Privilege;

    .line 52
    .line 53
    .line 54
    const v1, 0x7f120c7c

    .line 55
    .line 56
    .line 57
    const v2, 0x7f120c73

    .line 58
    .line 59
    .line 60
    const v3, 0x7f0807bf

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/wallet/membership/Privilege;-><init>(III)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/wallet/membership/Privilege;

    .line 69
    .line 70
    .line 71
    const v1, 0x7f120c77

    .line 72
    .line 73
    .line 74
    const v2, 0x7f120c6e

    .line 75
    .line 76
    .line 77
    const v3, 0x7f0807bb

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/wallet/membership/Privilege;-><init>(III)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    new-instance v0, Lcom/narvii/wallet/membership/Privilege;

    .line 86
    .line 87
    .line 88
    const v1, 0x7f120c79

    .line 89
    .line 90
    .line 91
    const v2, 0x7f120c70

    .line 92
    .line 93
    .line 94
    const v3, 0x7f0807bd

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/wallet/membership/Privilege;-><init>(III)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    new-instance v0, Lcom/narvii/wallet/membership/Privilege;

    .line 103
    .line 104
    .line 105
    const v1, 0x7f120c7a

    .line 106
    .line 107
    .line 108
    const v2, 0x7f120c71

    .line 109
    .line 110
    .line 111
    const v3, 0x7f0807be

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/wallet/membership/Privilege;-><init>(III)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    new-instance v0, Lcom/narvii/wallet/membership/Privilege;

    .line 120
    .line 121
    .line 122
    const v1, 0x7f120c7e

    .line 123
    .line 124
    .line 125
    const v2, 0x7f120c75

    .line 126
    .line 127
    .line 128
    const v3, 0x7f0807c1

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/wallet/membership/Privilege;-><init>(III)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    new-instance v0, Lcom/narvii/wallet/membership/Privilege;

    .line 137
    .line 138
    .line 139
    const v1, 0x7f120c7d

    .line 140
    .line 141
    .line 142
    const v2, 0x7f120c74

    .line 143
    .line 144
    .line 145
    const v3, 0x7f0807c0

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/wallet/membership/Privilege;-><init>(III)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method


# virtual methods
.method public pageData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/wallet/membership/Privilege;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/wallet/membership/PrivilegeDataSource;->privilegeList:Ljava/util/List;

    return-object v0
.end method
