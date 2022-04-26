<table>
    <thead>
    <tr>
        <th>No Anggota</th>
        <th>Nama</th>
        <th>Jenis Kelamin</th>
        <th>Tempat Lahir</th>
        <th>Tanggal Lahir</th>
        <th>Alamat</th>
        <th>Kecamatan</th>
        <th>Kabupaten</th>
        <th>Status</th>
        <th>Anak Ke</th>
        <th>Jumlah Saudara</th>
        <th>Pendidikan Terakhir</th>
        <th>Pekerjaan</th>
        <th>Kemampuan</th>
        <th>HP/WA</th>
        <th>Email</th>
        <th>Facebook</th>
        <th>Instagram</th>
        <th>Nama Ayah</th>
        <th>Sandi Ayah</th>
        <th>Alamat Ayah</th>
        <th>Tempat Lahir Ayah</th>
        <th>Tanggal Lahir Ayah</th>
        <th>Tempat Meninggal Ayah</th>
        <th>Tanggal Meninggal Ayah</th>
        <th>Nama Ibu</th>
        <th>Alamat Ibu</th>
        <th>Tempat Lahir Ibu</th>
        <th>Tanggal Lahir Ibu</th>
    </tr>
    </thead>
    <tbody>
    @foreach($members as $member)
        <tr>
            <td>{{ $member->member_no }}</td>
            <td>{{ $member->name }}</td>
            <td>{{ $member->gender }}</td>
            <td>{{ $member->place_of_born }}</td>
            <td>{{ $member->date_of_born }}</td>
            <td>{{ $member->address }}</td>
            <td>{{ $member->district->name }}</td>
            <td>{{ $member->district->city->name }}</td>
            <td>{{ $member->status }}</td>
            <td>{{ $member->number_child }}</td>
            <td>{{ $member->number_of_sibling }}</td>
            <td>{{ $member->last_education }}</td>
            <td>{{ $member->jobs }}</td>
            <td>{{ $member->skill }}</td>
            <td>{{ $member->phone }}</td>
            <td>{{ $member->email }}</td>
            <td>{{ $member->facebook }}</td>
            <td>{{ $member->instagram }}</td>
            <td>{{ $member->father_name }}</td>
            <td>{{ $member->father_enc }}</td>
            <td>{{ $member->father_address }}</td>
            <td>{{ $member->father_place_of_born }}</td>
            <td>{{ $member->father_date_of_born }}</td>
            <td>{{ $member->father_place_of_death }}</td>
            <td>{{ $member->father_date_of_death }}</td>
            <td>{{ $member->mother_name }}</td>
            <td>{{ $member->mother_address }}</td>
            <td>{{ $member->mother_place_of_born }}</td>
            <td>{{ $member->mother_date_of_born }}</td>
        </tr>
    @endforeach
    </tbody>
</table>
