module Api
    module V1
        class DatapegawaiController < ApplicationController
            def index 
                datapegawai = DataPegawai.order('created_at DESC');
                render json: { status: 'SUCCESS', message: 'Loaded Data Pegawai', data:datapegawai}, status: :ok
            end

            def show 
                datapegawai = DataPegawai.find(params[:id])
                render json: { status: 'SUCCESS', message: 'Data Has Found', data: datapegawai}, status: :ok
            end

            def create
                datapegawai =  DataPegawai.new(datapegawai_params)
                
                if datapegawai.save
                    render json: { status: 'SUCCESS', message: 'Saved Data Pegawai', data: datapegawai}, status: :ok
                else
                    render json: { status: 'ERROR', message: 'Data Pegawai not Saved', data: datapegawai.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                datapegawai = DataPegawai.find(params[:id])
                datapegawai.destroy
                render json: { status: 'SUCCESS', message: 'Deleted Data Pegawai', data: datapegawai}, status: :ok
            end

            def update
                datapegawai = DataPegawai.find(params[:id])
                if datapegawai.update_attributes(datapegawai_params)
                    render json: { status: 'SUCCESS', message: 'Updated Data Pegawai', data: datapegawai}, status: :ok
                else
                    render json: { status: 'ERROR', message: 'Data Pegawai not Updated', data: datapegawai.errors}, status: :unprocessable_entity
                end
            end

            private 

            def datapegawai_params
                params.permit(:nama,:nik)
            end
        end
    end
end
