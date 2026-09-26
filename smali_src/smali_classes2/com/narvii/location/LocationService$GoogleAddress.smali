.class Lcom/narvii/location/LocationService$GoogleAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/location/ReadableAddress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleAddress"
.end annotation


# instance fields
.field address:Landroid/location/Address;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/Address;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/location/LocationService$GoogleAddress;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 8
    return-void
.end method


# virtual methods
.method public getCityLevelAddressText()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    const/4 v3, 0x0

    .line 49
    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    .line 56
    move-result v0

    .line 57
    .line 58
    if-lez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    .line 64
    move-result v1

    .line 65
    sub-int/2addr v1, v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    return-object v0

    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    return-object v0

    .line 86
    .line 87
    :cond_4
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    return-object v0

    .line 101
    .line 102
    :cond_5
    const-string v0, ""

    .line 103
    return-object v0

    .line 104
    .line 105
    :cond_6
    iget-object v1, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    move-result v1

    .line 114
    .line 115
    if-eqz v1, :cond_7

    .line 116
    return-object v0

    .line 117
    .line 118
    :cond_7
    iget-object v1, p0, Lcom/narvii/location/LocationService$GoogleAddress;->context:Landroid/content/Context;

    .line 119
    .line 120
    sget v4, Lcom/narvii/lib/R$string;->address_output_string:I

    .line 121
    const/4 v5, 0x2

    .line 122
    .line 123
    new-array v5, v5, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object v0, v5, v3

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    aput-object v0, v5, v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    return-object v0
.end method
